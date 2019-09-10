# Node.js

## What is Node.js?

_Node.js is a cross-platform `JavaScript Runtime Environment`- built on top of Chrome's V8  Engine_

* Node.js is a server-side cross-platform built on Google Chrome's JavaScript Engine \(V8 Engine\) 
* For easily building fast and scalable network applications. 
* Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient, 
* perfect for data-intensive real-time applications that run across distributed devices.



```text
Node.js = JavaScript Runtime Environment + Extension of JavaScript (Server-Side) Behavior

Node.js = V8-Engine + Libuv(Asynchronous IO) + Non-Blocking IO + Node-Core (C++ Library) + C++ Wrappers (.js files) & JavaScript Utility Function (.js files)
```

Now you can do much more with JavaScript than just making websites interactive.

JavaScript now has the capability to do things that other scripting languages like Python can do.

## What is JavaScript Runtime Environment?

![If you know Java, here&#x2019;s a little analogy.](../../.gitbook/assets/image%20%28142%29.png)



### Key Features of Node.js

Following are some of the important features that make Node.js the first choice of software architects.

* **Asynchronous and Event Driven** − All APIs of Node.js library are `asynchronous`, that is, `non-blocking`. It essentially means a Node.js based server never waits for an API to return data. The server moves to the next API after calling it and a notification mechanism of Events of Node.js helps the server to get a response from the previous API call.
* **Single Threaded but Highly Scalable** − Node.js uses a single threaded model with event looping. Event mechanism helps the server to respond in a non-blocking way and makes the server highly scalable as opposed to traditional servers which create limited threads to handle requests. Node.js uses a single threaded program and the same program can provide service to a much larger number of requests than traditional servers like Apache HTTP Server.
* **Very Fast** − Being built on Google Chrome's `V8 JavaScript Engine`, Node.js library is very fast in code execution.
* **No Buffering** − Node.js applications never buffer any data. These applications simply `output` the `data in chunks`.



## Node.js Architecture 

![](../../.gitbook/assets/image%20%2865%29.png)





