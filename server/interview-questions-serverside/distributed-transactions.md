# Distributed Transactions

## Data Consistency

### Data Consistency Problems in Microservice & How 'Saga' helps 

{% tabs %}
{% tab title="Video" %}
{% embed url="https://www.youtube.com/watch?v=YPbGW3Fnmbc" %}
{% endtab %}

{% tab title="1" %}
### Business Criteria

![](../../.gitbook/assets/image%20%28146%29.png)
{% endtab %}

{% tab title="2" %}
![](../../.gitbook/assets/image%20%28108%29.png)

![](../../.gitbook/assets/image%20%2846%29.png)

![](../../.gitbook/assets/image%20%2870%29.png)

But

![](../../.gitbook/assets/image%20%2822%29.png)
{% endtab %}

{% tab title="3 \(MS\)" %}
### Microservice

![](../../.gitbook/assets/image%20%28120%29.png)

![](../../.gitbook/assets/image%20%2850%29.png)

![](../../.gitbook/assets/image%20%2816%29.png)
{% endtab %}

{% tab title="4" %}
### Microservice DataConsistency

![](../../.gitbook/assets/image%20%2834%29.png)

![](../../.gitbook/assets/image%20%28137%29.png)

![](../../.gitbook/assets/image%20%2885%29.png)
{% endtab %}

{% tab title="5 \(saga\)" %}
![](../../.gitbook/assets/image%20%28153%29.png)

![](../../.gitbook/assets/image%20%2837%29.png)

![](../../.gitbook/assets/image%20%28154%29.png)

![](../../.gitbook/assets/image%20%2828%29.png)
{% endtab %}

{% tab title="6" %}
![](../../.gitbook/assets/image%20%2880%29.png)

![](../../.gitbook/assets/image%20%28142%29.png)

![](../../.gitbook/assets/image%20%2852%29.png)
{% endtab %}

{% tab title="7" %}
![](../../.gitbook/assets/image%20%28111%29.png)

![](../../.gitbook/assets/image%20%28124%29.png)

![](../../.gitbook/assets/image%20%2840%29.png)
{% endtab %}

{% tab title="8" %}
![](../../.gitbook/assets/image%20%2819%29.png)
{% endtab %}

{% tab title="9" %}
![](../../.gitbook/assets/image%20%28128%29.png)

![](../../.gitbook/assets/image%20%2839%29.png)

![](../../.gitbook/assets/image%20%285%29.png)

![](../../.gitbook/assets/image%20%2832%29.png)

#### Recommended Solutions:

![](../../.gitbook/assets/image%20%2896%29.png)

![](../../.gitbook/assets/image%20%2843%29.png)

![](../../.gitbook/assets/image%20%28122%29.png)
{% endtab %}

{% tab title="10" %}
![](../../.gitbook/assets/image%20%2889%29.png)

![](../../.gitbook/assets/image%20%2874%29.png)

![](../../.gitbook/assets/image%20%2879%29.png)

![](../../.gitbook/assets/image%20%284%29.png)

![](../../.gitbook/assets/image%20%2865%29.png)
{% endtab %}

{% tab title="11" %}
![](../../.gitbook/assets/image%20%2886%29.png)

![](../../.gitbook/assets/image%20%2875%29.png)

![](../../.gitbook/assets/image%20%2863%29.png)

![](../../.gitbook/assets/image%20%2890%29.png)
{% endtab %}

{% tab title="12" %}
### 1. Use 'Table' & `Keep Polling the Table` -to Publish the Msg

![](../../.gitbook/assets/image%20%2824%29.png)

![](../../.gitbook/assets/image%20%2857%29.png)

### 2. Use 'Table' & `Tail DB Logs` --to Publish the Msg

![](../../.gitbook/assets/image%20%2835%29.png)

![](../../.gitbook/assets/image%20%2831%29.png)
{% endtab %}
{% endtabs %}

### Data Consistency Problems \(more..\)

{% tabs %}
{% tab title="1" %}
![](../../.gitbook/assets/image%20%2859%29.png)
{% endtab %}

{% tab title="2" %}


![](../../.gitbook/assets/image%20%28100%29.png)

![](../../.gitbook/assets/image%20%28126%29.png)





![](../../.gitbook/assets/image%20%2823%29.png)
{% endtab %}

{% tab title="3" %}
![](../../.gitbook/assets/image%20%28118%29.png)

![](../../.gitbook/assets/image%20%2893%29.png)

![](../../.gitbook/assets/image%20%28145%29.png)
{% endtab %}

{% tab title="4" %}
![](../../.gitbook/assets/image%20%2845%29.png)

![](../../.gitbook/assets/image%20%2861%29.png)
{% endtab %}

{% tab title="5" %}
![](../../.gitbook/assets/image%20%2849%29.png)
{% endtab %}

{% tab title="6" %}
![](../../.gitbook/assets/image%20%2844%29.png)
{% endtab %}

{% tab title="7" %}
![](../../.gitbook/assets/image%20%2814%29.png)

Not everywhere we need Data Consistency

For example, \(Here we may have Data Inconsistency

1. In online shopping website
   1. Sometimes you see, Data Inconsistency
   2. For example, In search page, **Item shows Available**
   3. But actually if you click that **Item details** and see it shows **"Not Available"**
2. 
![](../../.gitbook/assets/image%20%2815%29.png)
{% endtab %}

{% tab title="8" %}
![](../../.gitbook/assets/image%20%2830%29.png)
{% endtab %}

{% tab title="9" %}
![](../../.gitbook/assets/image%20%28152%29.png)
{% endtab %}
{% endtabs %}



## Kafka

### What is Kafka

{% tabs %}
{% tab title="1" %}
![](../../.gitbook/assets/image%20%28117%29.png)

![](../../.gitbook/assets/image%20%2836%29.png)
{% endtab %}

{% tab title="2" %}
ss
{% endtab %}

{% tab title="2" %}
![](../../.gitbook/assets/image%20%2812%29.png)

![](../../.gitbook/assets/image%20%28112%29.png)

![](../../.gitbook/assets/image%20%2887%29.png)

![](../../.gitbook/assets/image%20%28129%29.png)

![](../../.gitbook/assets/image%20%2892%29.png)

![](../../.gitbook/assets/image%20%2847%29.png)

![](../../.gitbook/assets/image%20%28133%29.png)

![](../../.gitbook/assets/image%20%28107%29.png)

![](../../.gitbook/assets/image%20%2864%29.png)

![](../../.gitbook/assets/image%20%2842%29.png)

![](../../.gitbook/assets/image%20%28140%29.png)
{% endtab %}

{% tab title="3" %}
![](../../.gitbook/assets/image%20%28127%29.png)

![](../../.gitbook/assets/image%20%28136%29.png)

![](../../.gitbook/assets/image%20%28139%29.png)

![](../../.gitbook/assets/image%20%28134%29.png)

![](../../.gitbook/assets/image%20%28135%29.png)

![](../../.gitbook/assets/image%20%2867%29.png)

![](../../.gitbook/assets/image%20%2854%29.png)

![](../../.gitbook/assets/image%20%28149%29.png)

![](../../.gitbook/assets/image%20%2821%29.png)

![](../../.gitbook/assets/image%20%287%29.png)

![](../../.gitbook/assets/image%20%28138%29.png)

![](../../.gitbook/assets/image%20%28114%29.png)
{% endtab %}

{% tab title="4" %}
![](../../.gitbook/assets/image%20%2818%29.png)

![](../../.gitbook/assets/image%20%28123%29.png)

![](../../.gitbook/assets/image%20%28151%29.png)
{% endtab %}

{% tab title="5" %}
![](../../.gitbook/assets/image%20%28131%29.png)

![](../../.gitbook/assets/image%20%2853%29.png)

![](../../.gitbook/assets/image%20%2882%29.png)

![](../../.gitbook/assets/image%20%28104%29.png)

![](../../.gitbook/assets/image%20%2872%29.png)



![](../../.gitbook/assets/image%20%28102%29.png)

![](../../.gitbook/assets/image%20%2858%29.png)
{% endtab %}

{% tab title="video" %}
{% embed url="https://www.youtube.com/watch?v=I32hmY4diFY" %}
{% endtab %}
{% endtabs %}

### Why Kafka

{% tabs %}
{% tab title="video" %}
{% embed url="https://www.youtube.com/watch?v=ccwlrzruWD8" %}
{% endtab %}

{% tab title="1" %}
![](../../.gitbook/assets/image%20%2817%29.png)
{% endtab %}

{% tab title="2" %}
![](../../.gitbook/assets/image%20%281%29.png)

![](../../.gitbook/assets/image%20%28144%29.png)
{% endtab %}

{% tab title="3" %}
![](../../.gitbook/assets/image%20%2838%29.png)
{% endtab %}
{% endtabs %}







