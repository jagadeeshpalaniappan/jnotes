# 0. Event Loop & CallStack

```bash
JavaScript is 
    - 'single-threaded', 
    - 'non-blocking', 
    - 'event-driven', 'asynchronous', 'concurrent' language

Browser has 
    - a 'call stack', 
    - an 'event loop', 
    - a 'callback queue', 
    - and 'some other APIs' (DOM API)


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

```



![](../../../.gitbook/assets/browser.gif)

## Call Stack

### Simple \(Call Stack\)

![](../../../.gitbook/assets/js-callstack-simple-1.gif)

### Error \(Call Stack\) 

![](../../../.gitbook/assets/js-callstack-err.png)

### 

### Maximum \(Call Stack\) exceeded

![](../../../.gitbook/assets/js-callstack-max-1.gif)

### 

### setTimeout \(Call Stack\) 

![](../../../.gitbook/assets/js-callstack-async-settimeout-5000-1.gif)

### 

### setTimeout \(Call Stack\) - Detailed

![](../../../.gitbook/assets/js-callstack-async-settimeout-5000-detailed-1.gif)



### setTimeout\(..., 0\) \(Call Stack\) 

![](../../../.gitbook/assets/js-callstack-async-settimeout-0-detailed-1.gif)



### AJAX \(Call Stack\) 

![](../../../.gitbook/assets/js-callstack-async-ajax-1%20%281%29.gif)



