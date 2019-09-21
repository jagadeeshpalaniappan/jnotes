# 0. Event Loop

```javascript
JavaScript is 
    - 'single-threaded', 
    - 'non-blocking', 
    - 'event-driven', 'asynchronous', 'concurrent' language

Browser has 
    - a 'call stack', 
    - an 'event loop', 
    - a 'Task Queue', 'Micro Task Queue''
    - and 'some other Web APIs' (document, XMLHttpRequest, fetch, requestAnimationFrame)


- JavaScript Runtime - can do only 'one thing at a time'
- But browser can do 'more than one thing at a time'
- When 'JavaScript CallStack' sees the async fn (setTimeout, xhr,..)
- it executes and assign the async task to 'browser/node.js' and does NOT wait for the completion
    - JavaScript CallStack continue executing the other lines
....
....    
- once 'browser/node.js' completes the task, it adds into the 'Task Queue'
- On every iteration,
- 'Event Loop' looks at the Task Queue and add 'Task' into the CallStack (whenever the current CallStack gets empty)


#### Task: ####
 - setTimeout(..), setInterval(..)
 - XMLHttpRequest, fetch(..)
 - 'click/change/load ...' event
 
 - setImmediate(..)    // Node.js Only
 

#### Micro Task: ####
 - Promise [.then(..), .catch(..) .finally(..)]
 - Object.observe
 
 - process.nextTick    // Node.js Only
 
```



![](../../../.gitbook/assets/browser.gif)

## Call Stack

{% tabs %}
{% tab title="Sync" %}
#### Synchronous: Simple Code \(Call Stack\)

{% embed url="https://drive.google.com/open?id=1UG5Ir-MM1MFxKJQGgV-IBpgTphbmd\_06sBmLguUOgT0" %}

 
{% endtab %}

{% tab title="Error \(Call Stack\) " %}
#### Error \(Call Stack\)

![](../../../.gitbook/assets/js-callstack-err.png)
{% endtab %}

{% tab title="Maximum \(Call Stack\) exceeded" %}
#### Maximum \(Call Stack\) exceeded

{% embed url="https://drive.google.com/open?id=1s0c98XHB1oB9G7jEVwkIrcoVoXrgMgWCEaxeLACuwdg" %}
{% endtab %}

{% tab title="setTimeout" %}
#### setTimeout \(Call Stack\) 

{% embed url="https://drive.google.com/open?id=1jllxkq3EscDnGgwiCYeDQ3jbi3YM8j67cSg7P8THfis" %}

#### 

#### setTimeout \(Call Stack\)  -Detailed

{% embed url="https://drive.google.com/open?id=15lQyXn2sTOK4bqgy28bS9ODsXHQNNnISpwMvq\_jrV0M" %}
{% endtab %}

{% tab title="setTimeout-0" %}
### setTimeout\(..., 0\) \(Call Stack\) 

{% embed url="https://drive.google.com/open?id=1LlsveY1Cw12-ghSYjdeRGAhtwZJM9XYk2bLMsGmnU6E" %}
{% endtab %}

{% tab title="AJAX" %}
### AJAX \(Call Stack\) 

{% embed url="https://drive.google.com/open?id=1oPSV9H\_D8fOwFTajhys5pGX8oexmbmd8BEMYujTCa00" %}
{% endtab %}
{% endtabs %}

### 

## Event Loop -Detailed:

{% embed url="https://drive.google.com/open?id=1ZLyawPiRcA-llgP0NobUGPBPTZ1y0cK8TgFjhNVeCWc" %}



### 

### 

### 

### 

### 

### 



### 



### 



## Must Watch Videos \[Event Loop\]

{% embed url="https://www.youtube.com/watch?v=8aGhZQkoFbQ&t=166s" %}

{% embed url="https://www.youtube.com/watch?v=cCOL7MC4Pl0" %}

{% embed url="https://jakearchibald.com/2015/tasks-microtasks-queues-and-schedules/" %}

{% embed url="http://voidcanvas.com/nodejs-event-loop/" %}

### setImmediate\(\) vs nextTick\(\) vs setTimeout\(fn,0\)

{% embed url="http://voidcanvas.com/setimmediate-vs-nexttick-vs-settimeout/" %}



