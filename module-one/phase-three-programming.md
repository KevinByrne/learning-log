<h2>Phase 3 programming</h2>
<br>
<h3>ruby foundations</h3>
<br>

<details>
<summary>Chapter 1</summary>
<br>
A list of Ruby data types<br><br>

<ul>
<li><b>Numbers</b> - These can be either an Integer (whole number) or a float (using a decimal point).</li>
<li><b>Boolean</b> - This represents an item of information based on using a True or False argument</li>
<li><b>Strings</b> - A string is a group of letters used to represent sentences or words, they normally are defined by double or single quotation marks.</li>
<li><b>Hashes</b> - These use values assigned to a key, therefore made up something called key pairs, every key holds a value</li>
<li><b>Arrays</b> - These store lists of data, elements of an array are attached to an index represented by a number, index numbers start at 0</li>
<li><b>Symbols</b> - These are 'lightweight' strings, preceded by a colon, they are used due to taking up less memory</li>
</ul>
<br>
Reflect and Review<br><br>
<ul>
<li>Executing Ruby code in IRB - This is know as a REPL (read-eval-print-loop). It is an interactive programming environment that takes an input and returns a result. It is a quick way to test how parts of a programme might run without having to write a full method or programme, it allows you to experiment with parts of a method etc. </li>
<li>Strings - Strings are the representation of words or sentences in Ruby, stings are used to return a visual output, which can be read by an end user. Strings are an Object which means you can send messages or Methods as they are called, to have the object act in different ways.</li>
<li>String Concatenation - This is the ability to join strings together to form sentences etc.</li>
<li>Variables - Variables are named containers for storing data. Variable can be made up of strings, booleans, hashes, arrays or numbers. Variables are assigned values which are returned when the variable is called into action.</li>
<li>Return Values - These are what is returned as an end point when a method or programme is run. This can be a visual output such as a string, number or boolean. The return value isn't always visual however, a method may run and then influence another part of a programme. The eventual output may result in something like a light switching for example.</li>
</ul>
</details>

<details>
<summary>Chapter 2</summary><br>
<ul>
<li>Error Messages - Error messages are useful as they can pinpoint why the error is occurring, the most useful part of an error message is after the traceback where it would typically say something along the lines of <code>NameError (undefined local variable or method 'hello' for main:Object)</code> this is telling you what the reason for the error message is, in this example there is no variable or method called 'hello'. The last line of the traceback is also useful as this tells you what line of the programme the error is occurring on.</li>
<li>Another example of an error message - in IRB we ran the following command <code>> 1 + 'a'</code> which returns and error of <code>TypeError (String can't be coerced into Integer)</code>
This tells us that we can not join an Integer with a string
</li>
</details>

<details>
<summary>Chapter 3</summary>
<ul>
<li>
Concatenation is useful for joining strings, for example if you have a variable called <code>forename</code> and a variable called <code>surname</code> you could join these together by running <code>forename + surname</code>.
</li>
<li>
Interpolation is useful as this allows you to insert the value stored in a variable within a string. For example using a variable called <code>name</code> with a value of <code>"Kev"</code> and then running a command in IRB such as <code> > "Hello #{name}, how are you today?"</code> will give a return value of <code>"Hello Kev, how are you today"</code>. <br>
You can interpolate multiple times within a string, for example, using another variable of <code>date</code> and assigning a value of <code>"08/06/2022"</code> and then running <code >> "Hello #{name}, how are you? Today's date is #{date}"</code> will give a return value of <code>"Hello Kev, how are you?, today's date is 08/06/2022"</code>
</li>
</ul><br>
<ul>
Methods <br><br>
<li>Methods are instructions or messages that can communicate and therefore influence the behavior of an Object.</li>
<li>
Methods are called using dot syntax <code>( . )</code>
</li>
<li>
Methods can either be self-defined (designed to work in a bespoke way) or you can use methods that already exist within the Ruby Core Library<br><br>
</li>
An example of some of the methods available in the Ruby Core Library are: <br><br>
<li><b>capitalize</b> -this gives a return value where the first letter of the string is capitalized.</li>
<li><b>downcase</b> - gives a return value whereby the string's characters are all in lowercase despite how they are input in the initial value.</li>
<li><b>length</b> - gives a return value of the length of the string as an Integer.</li>
<li><b>invert</b> - this was a red herring presented in the exercise, there is no such method.</li>
<li><b>reverse</b> - this gives a return value of the string in a reverse (mirror) format.</li>
<li><b>clear</b> - this gives a return value whereby the characters within the string are cleared, therefore the string becomes blank.</li>
<li><b>chomp</b> - this removes a record separator, for example the string <code>"hello\welcome"</code> would give a return value of <code>"hellowelcome"</code></li>
</ul>

<b><u>Method Chaining</u></b>

Method chaining is a way in which to call a number of methods on a variable at the same time, as opposed to calling a method on variable, then calling another method on a variable etc - you can call a number of methods on an Object at the same time.

We were given an exercise consisting of four examples and asked what we thought would happen before running them in IRB, below is a table listing my prediction and the actual outcome.

<table>
<tr>
<th>Example given</th>
<th>My Prediction</th>
<th>Return Value</th>
<tr>
<tr>
<td><code> > "hello".length </code></td>
<td> will return length of string as an Integer</td>
<td> as predicted, returns length of string as an Integer</td>
</tr>
<tr>
<td><code> > 5.downcase </code></td>
<td> will return an error as calling a string method on an Integer</td>
<td> as predicted, returns <code>NoMethodError (undefined method `downcase' for 5:Integer)</code></td>
</tr>
<tr>
<td><code> > "hello".downcase.length </code></td>
<td> will return string in lowercase format and given length as an Integer</td>
<td> returns ONLY the integer, not both.</td>
</tr>
<tr>
<td><code> >"hello".length.downcase</code></td>
<td> will return string in lowercase format and given length as an Integer (pretty much as above)</td>
<td> returns <code> NoMethodError (undefined method `downcase' for 5:Integer)</code></td>
</tr>
</table><br>

The interesting thing to note, my learning point from that exercise if you will, is that when chaining a method they run in sequence and if anywhere in that sequence might have call a method that does align with a previous method, an error message will be returned.

In example 3, the return value is an Integer only as opposed to what I thought the return value would be (string and integer). The <code>.downcase</code> method does convert the string to lowercase but it then calls the <code>.reverse</code> method and ONLY returns that value.

In example 4, the chain calls a <code>.length</code> method first which then returns an Integer, although not physically output. It then calls a <code>.downcase</code> method which is a string method therefore can not be called on an Integer Object.

<b><u>Investigating other data types using Ruby docs</u></b>

Finally I used the ruby docs to look at a few methods on a different data type. I chose to look at Integers, I chose four methods to use on an Integer to research what they did

<ol>
<li><code>5.to_f</code> - this calls the method to convert a whole number to a float number, or decimal point. This return value was 5.0</li>
<li>
<code>5.even?</code> - this calls a method to check if the number given is an even number. The return value is either true or false.
</li>
<li>
<code>5.next</code> - this calls a method to give a return value of the next number in sequential order.
</li>
<li>
<code>5.to_s</code> - this calls a method to give a return value where the integer is now a string.
</li>
</ol>
</details>