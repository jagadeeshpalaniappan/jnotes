# 1. Event 'Bubbling' vs 'Capturing' vs 'Delegation'

## Event 'Bubbling'

{% hint style="info" %}
When an event happens on an element, 

* it first runs the handlers on _**it**_ ---&gt; then all the way up all its _**ancestors**_.
{% endhint %}

Let’s say, we have 3 nested elements `FORM > DIV > P` with a 'click' handler on each of them:

![](../.gitbook/assets/image%20%283%29.png)

```markup
<!-- 
  onclick="handleClickEvent(event)" also works fine, 
  since i need 'this' obj, i am using   onclick="handleClickEvent.call(this, event)" 
-->
<form id="myForm" onclick="handleClickEvent.call(this, event)"> FORM1
	<div id="myDiv" onclick="handleClickEvent.call(this, event)"> DIV1
		<p id="myP" onclick="handleClickEvent.call(this, event)">P1</p>
	</div>
</form>
<script>
  var handleClickEvent = function (event) {
    // 'event.target' is actual ele where click happend
    // 'event.currentTarget' is the ele where 'click' event listener is registered
    // 'this.tagName' current element's tagName
    console.log(event.target.id + "--" + this.tagName + "--" + event.currentTarget.id);
  };
</script>
```

So if we click on `<p>`, then we’ll see 3 console output:  

* because `<p>` click event got bubbled to its ancestors `p` → `div` → `form`.

```text
myP--P--myP
myP--DIV--myDiv
myP--FORM--myForm
```

Similarly, if we click on `<div>`, then we’ll see 2 console output:  

* because `<div>` click event got bubbled to its ancestors `div` → `form`.

```text
myDiv--DIV--myDiv
myDiv--FORM--myForm
```

Similarly, if we click on `<form>`, then we’ll see 1 console output:  

* because `<div>` click event got bubbled to its ancestors `form`.

```text
myForm--FORM--myForm
```

We can achieve the same using `addEventListener`

```markup
<form id="myForm"> FORM1
	<div id="myDiv"> DIV1
		<p id="myP">P1</p>
	</div>
</form>
<script>
  var handleClickEvent = function (event) {
    console.log(event.target.id + "--" + this.tagName + "--" + event.currentTarget.id);
  };
  
  var myForm = document.querySelector('#myForm');  
  myForm.addEventListener("click", handleClickEvent);  
  
  var myDiv = document.querySelector('#myDiv');  
  myDiv.addEventListener("click", handleClickEvent);
  
  var myP = document.querySelector('#myP');  
  myP.addEventListener("click", handleClickEvent);

</script>
```



{% hint style="danger" %}
By **Default:** almost **all** events _**'bubble'**_

But some events does not bubble, E.g. **'focus', 'blur', 'scroll', ...**
{% endhint %}



### How to stop 'bubbling' ?

 `event.stopPropagation()`helps event to stop bubble to its ancestors

```markup
<form id="myForm"> FORM1
	<div id="myDiv"> DIV1
		<p id="myP">P1</p>
	</div>
</form>
<script>
  var handleClickEvent = function (event) {
    console.log(event.target.id + "--" + this.tagName + "--" + event.currentTarget.id);
    event.stopPropagation();  // it stops further bubling
  };
  
  var myForm = document.querySelector('#myForm');  
  myForm.addEventListener("click", handleClickEvent);  
  
  var myDiv = document.querySelector('#myDiv');  
  myDiv.addEventListener("click", handleClickEvent);
  
  var myP = document.querySelector('#myP');  
  myP.addEventListener("click", handleClickEvent);

</script>
```

So if we click on `<p>`, then we’ll see 1 console output:  

* because `<p>` click event NOT bubbled to its ancestors.

```text
myP--P--myP
```

## Event 'Capturing'



