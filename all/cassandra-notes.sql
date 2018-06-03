cqlsh> 
CREATE KEYSPACE essentials WITH REPLICATION = {'class': 'SimpleStrategy', 'replication_factor':1} ;

describe keyspaces
essentials     system_auth  system_distributed
system_schema  system       system_traces

use essentials;


cqlsh:essentials> CREATE TABLE movies (
              ... movie_id UUID,
              ... title TEXT,
              ... release_year INT,
              ... PRIMARY KEY ((movie_id))
              ... );

cqlsh:essentials> insert into movies (movie_id, release_year, title) values (uuid(), 2011, 'Tree of Life');
cqlsh:essentials> insert into movies (movie_id, release_year, title) values (uuid(), 2016, 'La La Land');
cqlsh:essentials> insert into movies (movie_id, release_year, title) values (uuid(), 2014, 'Birdman');
cqlsh:essentials> CREATE TABLE movies_by_actor (
              ... actor TEXT,
              ... release_year INT,
              ... movie_id UUID,
              ... title TEXT,
              ... genres SET<TEXT>,
              ... rating FLOAT,
              ... PRIMARY KEY ((actor), release_year, movie_id)
              ... ) WITH CLUSTERING ORDER BY (release_year DESC, movie_id ASC);
cqlsh:essentials> select * from movies;



 movie_id                             | release_year | title
--------------------------------------+--------------+--------------
 b90c03a0-c63a-451f-b833-e16ddda3b5ea |         2014 |      Birdman
 08264a33-bea8-450e-a995-3b942419cb6d |         2016 |   La La Land
 84db39d9-66a7-4bbe-9c50-586b4a370503 |         2011 | Tree of Life



insert into movies_by_actor (actor, release_year, movie_id, title, genres, rating) values ('Emma Stone', 2016, 08264a33-bea8-450e-a995-3b942419cb6d, 'La La Land', {'musical', 'drama'}, 10);

insert into movies_by_actor (actor, release_year, movie_id, title, genres, rating) values ('Brad Pitt', 2011, 84db39d9-66a7-4bbe-9c50-586b4a370503, 'Tree of Life', {'drama'}, 10);

insert into movies_by_actor (actor, release_year, movie_id, title, genres, rating) values ('Emma Stone', 2014, b90c03a0-c63a-451f-b833-e16ddda3b5ea, 'Birdman', {'drama'}, 10);



/* We cannot use where class without (partitionId) */
cqlsh:essentials> select * from movies_by_actor where release_year < 2015;
InvalidRequest: Error from server: code=2200 [Invalid query] 
message="Cannot execute this query as it might involve data filtering and thus may have unpredictable performance. If you want to execute this query despite the performance unpredictability, use ALLOW FILTERING"


select * from movies_by_actor where actor='Emma Stone';


/* DONOT-WORK: becoz 'title' cannot be used inside where clause  */
select * from movies_by_actor where actor='Emma Stone' and title like '%man';

CREATE CUSTOM INDEX title ON movies_by_actor (title) USING 'org.apache.cassandra.index.sasi.SASIIndex' WITH OPTIONS = {'mode': 'CONTAINS'};


/* IT-WORKS: becoz we added custom index 'title'  */
select * from movies_by_actor where actor='Emma Stone' and title like '%man';
 actor      | release_year | movie_id                             | genres    | rating | title
------------+--------------+--------------------------------------+-----------+--------+---------
 Emma Stone |         2014 | b90c03a0-c63a-451f-b833-e16ddda3b5ea | {'drama'} |     10 | Birdman



/* Query First Modeling */


