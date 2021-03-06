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
<details>
<summary>Chapter 4</summary><br>
This chapter summarized some of the information researched earlier.

<ul>
<li>Different types of data types</li>
</ul>

<b><u>The difference between Integers and Floats</u></b>

Integers are whole numbers

You can use Integers for example, in mathematic calculations.

Some of these are
<ul>
<li>Addition <code>1 + 1</code></li>
<li>Subtraction <code>5 - 4</code></li>
<li>Division <code>5 / 2</code> - this returns a whole number so in this example it would be <code>2</code></li>
<li>Multiplication <code>5 * 5</code></li>
<li>Modulo <code>5 % 2</code> - this divides the numbers given and returns the remainder as opposed to how many times the number can divided.</li>
<li>Exponentiation ( to the power of) <code>5 ** 3</code> - in this example this returns <code>125</code> ( 5 x 5 = 25 x 5 = 125)</li>
</ul>

Floats are decimal value numbers, the decimal point can be anywhere within the range of numbers.

Basic mathematics can also be called on floats

Symbols are similar to strings and are optimized by programmers.

Booleans are <code>true</code> and <code>false</code> values generally called by methods using a <code>?</code> within their syntax for example <code>.odd?</code> <code>.even?</code> <code>.include?</code> or <code>.empty?</code>

They can include several operators including
<ul>
<li><code>&&</code> which must meet BOTH conditions to return <code>true</code>

<li><code>||</code> which only needs one of the conditions to be met to return <code>true</code></li></ul>

To replicate the exercise on the course notes I changed this slightly to embed understanding.

The exercise given was 

<li><code>password.length > 7 && password.length < 13</code></li>

this would return <code>true</code> if the length of the password was more than (>) 7 characters and less than (<) 13 characters.

I further elaborated on this executing the following code in IRB
<ul>
<li><code>password = "This is a paszword"

password.include?("p") && password.include?("z")</code></li>
</ul>

Executing this gave a return value of <code>true</code>.
</details>

<details>
<summary>Chapter 5</summary>
<h3>Using arguments in Ruby</h3><br>

Arguments are pieces of information that are presents to methods, generally placed inside of (brackets or parenthesis).

In one of the exercises we were asked to research using methods with arguments, the answers are below:

<ul>
<li><code>count</code> - counts the instances of a character occurring in a string, for example,

<code>"using arguments in Ruby".count "a"</code><br>
gives a return value of <code>1</code></li>

<li><code>delete</code> - deletes characters given in an argument from a string, for example,

<code>"using arguments in Ruby".delete "n"</code><br> 
gives a return value of <code>"usg argumets i Ruby"</code></li>

<li><code>end_with?</code> - gives a return value of <code>true</code> or <code>false</code> depending on given argument, for example,

<code>"using arguments in Ruby".end_with? "y"</code><br>
gives a return value of <code>true</code></li>
<li><code>prepend</code> - adds characters given in argument to the start of a string, for example,

<code>"using arguments in Ruby".prepend "I'm "</code><br>
gives a return value of <code>"I'm using arguments in Ruby"</code></li>
</ul>

Some methods use multiple arguments, for example the <code>gsub</code> method - this is a method whereby you have to pass two arguments.

The <code>gsub</code> method is used to substitute one character for another in a string therefore you have to tell the method what character you want replacing and what character you want to replace it. 

<code>"using arguments in Ruby".gsub("n", "t")</code>

gives a return value of <code>usitg argumetts it Ruby"</code>


If you provide the wrong number of arguments an error message will be returned, for example,

<code>"using arguments in Ruby".count</code>

will return an error message <code>ArgumentError (wrong number of arguments (given 0, expected 1+))</code>
</details>

<details>
<summary>Chapter 6</summary>
<h3>Conditionals</h3><br>

In this chapter we looked at conditional statements such as <code>if elsif</code> and <code>else</code>

Conditionals are used to help a programme make decisions based on meeting criteria within said conditional statements.

We broke down a typical <code>if</code> statement, essentially an <code>if</code> statement is asking if something is <code>true</code> or <code>false</code>, for example

<code>
name = kevin

    if(name.include? "k")
      true
    end
</code>

This would return a value of <code>true</code> as it contains a "k"

If it doesn't contain a "k" it would return <code>nil</code>, to prevent this from happening so that we can see if its <code>true</code> or <code>false</code> we can use a catch all conditional in the event the name does not include a "k".

We do this by adding an <code>else</code> statement, for example,

<code>
name = "bob"

    if (name.include? "k")
      true
    else
      false
    end
</code>


If we now assign the name variable with the value of "bob" it will return false.

<code>elsif</code> comes into play when you have multiple outcomes.

I have included an example below based on a popular sign at tourist attractions.

This is called the weather stone and I decided to create a conditional loop.

1. The end user provides an argument for the method based on how the stone appears
2. The program executes using an initial <code>if</code> statement, if the criteria of that statement is not met, it then looks at the next conditional statement using <code>elsif</code> to see if it matches.
3. <code>elsif</code> will continue to do this and if none of the arguments match the conditions set, it then reads from an <code>else</code> statement which is our catch all.

<code>
def weather_forecast(stoneAppearance)

    if stoneAppearance == "wet"
      puts "It's raining!"
    elsif stoneAppearance == "dry"
      puts "It's not raining!"
    elsif stoneAppearance == "shadow"
      puts "It's sunny!"
    elsif stoneAppearance == "white"
      puts "It's snowing!"
    elsif stoneAppearance == "hard to see"
      puts "It's foggy!"
    elsif stoneAppearance == "swinging"
      puts "It's windy!"
    elsif stoneAppearance == "shaking"
      puts "Oh no! An Earthquake!"
    elsif stoneAppearance == "gone"
      puts "Oh dear! We've had a tornado! I'll get you my pretty!"
    else
      puts "please use 'wet', 'dry', 'shadow', 'white', 'hard to see', 'swinging', 'shaking' or 'gone' as an argument"
    end
  end


weather_forecast("wet")
</code>
</details>

<details>
<summary>Chapter 7</summary>
<h3>Executing Ruby Files</h3><br>

In this chapter we looked at creating and executing files in Ruby.

Ruby files are saved in <code>.rb</code> files.

You can create a new Ruby file within the terminal by typing 
<code>touch file_name.rb</code>.

The file will be in which ever directory you are in or where you have assigned the file to be saved.

The code within the <code>.rb</code> file will be executed and should the code contain a prompt to output a visual return value, this will appear in the terminal. For example

<code>puts "This is my output"</code>

will return an output in the terminal of <code>This is my output</code>.

If <code>puts</code> was not part of the program, the program would still be executed but there would be no visual output. You can use <code>puts</code> or <code>print</code> to output to terminal.

Its best practice to use <code>puts</code> if needed, after the program has executed what it needs to do. It would make no sense to have a <code>puts</code> command in the middle of a process (although this can be done).
</details>

<details>
<summary>Chapter 8</summary>
<h3>Defining Methods</h3><br>

Alongside built in methods in Ruby, self-defined methods can be created.

User defined methods provide the ability to write steps to influence how a programme runs. You can then attach these methods to objects that have been created. Creating your own methods allows you to call these methods on various different objects if need be also.

Methods are defined by using syntax <code>def</code> and closing the block by using <code>end</code>. You can use this to wrap your code in a method, so you could place an <code>if</code> loop within this block.

<code>
def check_my_name(name)

    if name.include?("kevin")
      return true
    else
      return false
    end
end

check_my_name("kevin")
</code>

would return

<code>true</code>

We were given some additional exercises to check understanding. These were:

Concatenate all the names of everyone in your family

<code>

def family

    mum = "Sarah, "
    dad = "Kev, "
    child_one = "Bella, "
    child_two = "Jake, "
    child_three = "Nicol "
    child_four = "Andrea"

    puts "Our family consists of #{mum}#{dad}#{child_one}#{child_two}#{child_three}and #{child_four}"
end

family
</code>

Calculate the number of seconds in 12 weeks

<code>
def seconds(numberOfWeeks)

    seconds_in_a_week = 604800
    puts seconds_in_a_week * numberOfWeeks
end

seconds(12)

</code>
</details>

<details>
<summary>
Chapter 9
</summary>

Chapter 9 was a series of drills to practice and embed knowledge, I found the repetitive nature of the exercises very helpful.

These exercises encouraged looking at Ruby docs and establishing which methods were best to use.

The drills were broken down into four stages.
1. calling methods
2. calling methods with arguments
3. Using conditional statements
4. defining our own methods - writing a method to a given specification.

The completed exercises can be found within the github repo

[Challenges link](https://github.com/KevinByrne/ruby_foundations/tree/main/chapter1/challenges/drills/lib)

</details>