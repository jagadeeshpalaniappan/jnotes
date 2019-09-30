# 1. Top 100 - EASY

## Index

| \# | qId | Title | freqStars |
| :--- | :--- | :--- | :--- |
| 1 | 1 | [Two Sum](https://leetcode.com/problems/two-sum) | \*\*\*\*\*\*\* |
| 2 | 53 | [Maximum Subarray    ](https://leetcode.com/problems/maximum-subarray) | \*\*\*\*\* |
| 3 | 21 | [Merge Two Sorted Lists    ](https://leetcode.com/problems/merge-two-sorted-lists) | \*\*\*\*\* |
| 4 | 20 | [Valid Parentheses    ](https://leetcode.com/problems/valid-parentheses) | \*\*\*\*\* |
| 5 | 206 | [Reverse Linked List    ](https://leetcode.com/problems/reverse-linked-list) | \*\*\*\* |
| 6 | 121 | [Best Time to Buy and Sell Stock    ](https://leetcode.com/problems/best-time-to-buy-and-sell-stock) | \*\*\*\* |
| 7 | 155 | [Min Stack    ](https://leetcode.com/problems/min-stack) | \*\*\* |
| 8 | 70 | [Climbing Stairs    ](https://leetcode.com/problems/climbing-stairs) | \*\*\* |
| 9 | 283 | [Move Zeroes    ](https://leetcode.com/problems/move-zeroes) | \*\*\* |
| 10 | 101 | [Symmetric Tree    ](https://leetcode.com/problems/symmetric-tree) | \*\* |
| 11 | 198 | [House Robber    ](https://leetcode.com/problems/house-robber) | \*\* |
| 12 | 234 | [Palindrome Linked List    ](https://leetcode.com/problems/palindrome-linked-list) | \*\* |
| 13 | 543 | [Diameter of Binary Tree    ](https://leetcode.com/problems/diameter-of-binary-tree) | \*\* |
| 14 | 141 | [Linked List Cycle    ](https://leetcode.com/problems/linked-list-cycle) | \*\* |
| 15 | 169 | [Majority Element    ](https://leetcode.com/problems/majority-element) | \*\* |
| 16 | 136 | [Single Number    ](https://leetcode.com/problems/single-number) | \*\* |
| 17 | 160 | [Intersection of Two Linked Lists    ](https://leetcode.com/problems/intersection-of-two-linked-lists) | \*\* |
| 18 | 104 | [Maximum Depth of Binary Tree    ](https://leetcode.com/problems/maximum-depth-of-binary-tree) | \*\* |
| 19 | 448 | [Find All Numbers Disappeared in an Array    ](https://leetcode.com/problems/find-all-numbers-disappeared-in-an-array) | \*\* |
| 20 | 226 | [Invert Binary Tree    ](https://leetcode.com/problems/invert-binary-tree) | \*\* |
| 21 | 617 | [Merge Two Binary Trees    ](https://leetcode.com/problems/merge-two-binary-trees) | \* |
| 22 | 437 | [Path Sum III    ](https://leetcode.com/problems/path-sum-iii) | \* |
| 23 | 581 | [Shortest Unsorted Continuous Subarray    ](https://leetcode.com/problems/shortest-unsorted-continuous-subarray) | \* |



## 1. Two Sum

{% tabs %}
{% tab title="Question" %}
Given an array of integers, return **indices** of the two numbers such that they add up to a specific target.

You may assume that each input would have _**exactly**_ one solution, and you may not use the _same_ element twice.

**Example:**

```text
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
```
{% endtab %}

{% tab title="Video" %}
{% embed url="https://www.youtube.com/watch?v=TcsYEnMrnFo" %}

{% embed url="https://www.youtube.com/watch?v=Ivyh3V4QolA" %}
{% endtab %}

{% tab title="Code" %}
```javascript
// Map lookup [BEST-SOLN]
// Time Complexity: O(n) // Space complexity : O(n) extraSpace: hashmap-lookup
function twoSum(inputArr, target) {

  // map = { eachInputVal: currespondingIndex }
  var map = {};
  for (var i = 0; i < inputArr.length; i++) {

    var currentNo = inputArr[i];
    var expectedNo = target - currentNo;

    // Is expectedNo already available in Map?
    if (map[expectedNo] || map[expectedNo] === 0) {
      // [expectedIndex , currentIndex]
      return [map[expectedNo], i];
    }

    // expectedNo NOT available, add it in the map
    // map: { currentNo: currentIndex }
    map[currentNo] = i;
  }

}
```
{% endtab %}
{% endtabs %}

## 2. Max Contiguous 'SubArray Sum'

{% tabs %}
{% tab title="Question" %}
Given an integer array `nums`, find the **contiguous subarray** \(containing at least one number\) which has the **largest sum** and return its sum.

**Example:**

```text
Input: [-2,1,-3,4,-1,2,1,-5,4],
Output: 6
Explanation: [4,-1,2,1] has the largest sum = 6.
```

**Follow up:**

If you have figured out the O\(_n_\) solution, try coding another solution using the divide and conquer approach, which is more subtle.
{% endtab %}

{% tab title="Video" %}
{% embed url="https://www.youtube.com/watch?v=2MmGzdiKR9Y" %}
{% endtab %}

{% tab title="Code" %}
```javascript
// Sol1: [BEST]
// Time complexity : O(N) // Space complexity : O(1)

function maxSubArray(inputArr) {
  let maxSumSoFar = inputArr[0];
  let currBestSum = inputArr[0];

  for (let i = 1; i < inputArr.length; i++) {
    // currBestSum = 'currItem' or 'currItem+lastBestSum'
    currBestSum = Math.max(inputArr[i], currBestSum + inputArr[i]);
    maxSumSoFar = Math.max(maxSumSoFar, currBestSum);
  }
  return maxSumSoFar;
}
```
{% endtab %}
{% endtabs %}

## 3. Merge Two Sorted Lists

{% tabs %}
{% tab title="Question" %}
Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

**Example:**

```text
Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4
```
{% endtab %}

{% tab title="Video" %}
{% embed url="https://www.youtube.com/watch?v=GfRQvf7MB3k" %}
{% endtab %}

{% tab title="Code" %}
```javascript
class ListNode {}

// Sol1: [BEST]
// Time complexity : Time complexity : O(n + m)  n: l1.length , m: l2.length
//    -technically: l1.length or l2.length (whichever is greater)
// Space complexity : O(1)

function mergeTwoLists(l1, l2) {
  let dummyHead = new ListNode(0);
  let current = dummyHead;

  // We set pointers to the head of list 1 and list 2
  // use 2pointers: these pointers (for iteration)
  let p1 = l1;
  let p2 = l2;

  // stopIteration: when anyOne 'list' is exhausted
  while (p1 != null && p2 != null) {

    // compare: 'p1' or 'p2' smaller
    if (p1.val <= p2.val) {
      // 'p1' wins (p1.val is smaller)
      current.next = p1;
      p1 = p1.next;
    } else {
      // 'p2' wins (p2.val is smaller)
      current.next = p2;
      p2 = p2.next;
    }

    // iteration: nextItem
    current = current.next;
  }

  // anyOne 'list' is exhausted, we just append the other remaining list to the end of the current list
  current.next = p1 != null ? p1 : p2;

  // We just return dummyHead's next, (now this will have the final sorted merged list)
  return dummyHead.next;
}
```
{% endtab %}
{% endtabs %}

## 4. Valid Parentheses

{% tabs %}
{% tab title="Question" %}
Given a string containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['` and `']'`, determine if the input string is valid.

An input string is valid if:

1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.

Note that an empty string is also considered valid.

**Example 1:**

```text
Input: "()"
Output: true
```

**Example 2:**

```text
Input: "()[]{}"
Output: true
```

**Example 3:**

```text
Input: "(]"
Output: false
```

**Example 4:**

```text
Input: "([)]"
Output: false
```

**Example 5:**

```text
Input: "{[]}"
Output: true
```
{% endtab %}

{% tab title="Video" %}
{% embed url="https://www.youtube.com/watch?v=CCyEXcNamC4" %}
{% endtab %}

{% tab title="Code" %}
```javascript
// Sol1: [BEST]
// Time complexity : O(n) 
// Space complexity : O(n) extraSpace: stack-space 
//  - worst case, we might end up pushing all the brackets onto the stack. e.g. ((((((((((.


// hashMap: { closingBracket: openingBracket }
const bracketMap = {
  ")": "(",
  "}": "{",
  "]": "["
};

function isValid(s) {
  const stack = [];

  for (let i = 0; i < s.length; i++) {
    const currChar = s[i];

    // Is 'currChar' is 'closingBracket'
    if (bracketMap[currChar]) {
      // get: matchingOpeningBracket from the bracketMap.
      const matchingOpeningBracket = bracketMap[currChar];
      // get: lastOpeningBracket from the stack.
      const lastOpeningBracket = stack.pop();

      if (matchingOpeningBracket != lastOpeningBracket) {
        // If 'matchingOpeningBracket' is not 'lastOpeningBracket' we added in stack, return false.
        return false;
      }

    } else {
      // add 'openingBracket' to the stack.
      stack.push(currChar);
    }
  }

  // If the 'stack' still contains openingBracket, then it is an invalid expression.
  return stack.length === 0;
}

```
{% endtab %}
{% endtabs %}



## 5. Reverse Linked List

{% tabs %}
{% tab title="Question" %}
Reverse a singly linked list.

**Example:**

```text
Input: 1->2->3->4->5->NULL
Output: 5->4->3->2->1->NULL
```

**Follow up:**

A linked list can be reversed either iteratively or recursively. Could you implement both?
{% endtab %}

{% tab title="Video" %}
{% embed url="https://www.youtube.com/watch?v=O0By4Zq0OFc" %}
{% endtab %}

{% tab title="Code" %}
```javascript
// Sol1: [BEST]
// Time complexity : O(n) // Space complexity : O(1)

class ListNode {}

function reverseList(head) {
  let prev = null;
  let curr = head;

  // iterate: until lastNode
  while (curr != null) {
    let nextTemp = curr.next;

    // reverse:
    curr.next = prev;

    // next: iteration
    prev = curr;
    curr = nextTemp;
  }
  return prev;
}

```
{% endtab %}

{% tab title="Code \(Recursive\)" %}
```javascript

// Sol2:
// Time complexity : O(n) // Space complexity : O(n) extraSpace: recursion-stack-space
function reverseList(currNode) {
  // base case:
  if (currNode == null || currNode.next == null) {
    return currNode;
  }

  // save: 'nextNodeTemp'
  let nextNodeTemp = currNode.next;

  // (except: myself) give me 'reversedList' all other items next to myself
  let reversedListHead = reverseList(nextNodeTemp);


  // now, 'nextNodeTemp' is the 'lastNode' (since it is reversed)
  // reversedListHead <-- ... <--- 'lastNode [nxt]'  --> NULL

  // assign: myself to lastNode's nextNode
  // reversedListHead<-- ... <--- 'lastNode [nxt]'  --> currNode
  nextNodeTemp.next = currNode;

  // now 'myself' becomes the 'lastNode'
  // mark: my nextNode as 'NULL'
  currNode.next = null;

  return reversedListHead;
}
```

[https://www.youtube.com/watch?v=MRe3UsRadKw](https://www.youtube.com/watch?v=MRe3UsRadKw)
{% endtab %}
{% endtabs %}

## \#. Xxxxxx Yyyyy

{% tabs %}
{% tab title="Question" %}
...
{% endtab %}

{% tab title="Video" %}

{% endtab %}

{% tab title="Code" %}
```javascript
....
```
{% endtab %}
{% endtabs %}

## \#. Xxxxxx Yyyyy

{% tabs %}
{% tab title="Question" %}
...
{% endtab %}

{% tab title="Video" %}

{% endtab %}

{% tab title="Code" %}
```javascript
....
```
{% endtab %}
{% endtabs %}

## \#. Xxxxxx Yyyyy

{% tabs %}
{% tab title="Question" %}
...
{% endtab %}

{% tab title="Video" %}

{% endtab %}

{% tab title="Code" %}
```javascript
....
```
{% endtab %}
{% endtabs %}

## \#. Xxxxxx Yyyyy

{% tabs %}
{% tab title="Question" %}
...
{% endtab %}

{% tab title="Video" %}

{% endtab %}

{% tab title="Code" %}
```javascript
....
```
{% endtab %}
{% endtabs %}

## \#. Xxxxxx Yyyyy

{% tabs %}
{% tab title="Question" %}
...
{% endtab %}

{% tab title="Video" %}

{% endtab %}

{% tab title="Code" %}
```javascript
....
```
{% endtab %}
{% endtabs %}



