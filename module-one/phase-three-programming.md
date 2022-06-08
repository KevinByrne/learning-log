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