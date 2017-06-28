# RSpec keywords

## The describe Keyword

The word describe is an RSpec keyword. It is used to define an “Example Group”.
You can think of an “Example Group” as a collection of tests.
The describe keyword can take a class name and/or string argument.
You also need to pass a block argument to describe, this will contain the individual tests,
or as they are known in RSpec, the “Examples”.
The block is just a Ruby block designated by the Ruby do/end keywords.

## The context Keyword

The context keyword is similar to describe. It too can accept a class name and/or string argument.
You should use a block with context as well. The idea of context is that it encloses tests of a certain type.

For example, you can specify groups of Examples with different contexts like this:
```
context “When passing bad parameters to the say_maybe_hello() method”
context “When passing valid parameters to the say_maybe_hello() method”
context “When testing corner cases with the say_maybe_hello() method”
```

The context keyword is not mandatory, but it helps to add more details about the examples that it contains.

## The it Keyword

The word it is another RSpec keyword which is used to define an “Example”.
An example is basically a test or a test case.
Again, like describe and context, it accepts both class name and string arguments and
should be used with a block argument, designated with do/end.
In the case of it, it is customary to only pass a string and block argument.
The string argument often uses the word “should” and is meant to describe what specific behavior should happen inside the it block.
In other words, it describes that expected outcome is for the Example.

Note the it block from our HelloMaybe Example:

```
it "The say_maybe_hello method should return 'Hello?'" do
```

The string makes it clear what should happen when we call `say_maybe_hello` on an instance of the `HelloMaybe` class.
This part of the RSpec philosophy, an Example is not just a test, it’s also a specification (a spec).
In other words, an Example both documents and tests the expected behavior of your Ruby code.

## The expect Keyword
The expect keyword is used to define an “Expectation” in RSpec.
This is a verification step where we check, that a specific expected condition has been met.

From our HelloMaybe Example, we have:
```
expect(message).to eql "Hello?"
```
The idea with expect statements is that they read like normal English.
You can say this aloud as “Expect the variable message to equal the string ‘Hello?’”.
The idea is that its descriptive and also easy to read, even for non-technical stakeholders such as project managers.

## The to keyword
The to keyword is used as part of expect statements. Note that you can also use the not_to keyword to express the opposite, when you want the Expectation to be false.
You can see that to is used with a dot, expect(message).to, because it actually just a regular
method. In fact, all of the RSpec keywords are really just Ruby methods.

## The eql keyword
The eql keyword is a special RSpec keyword called a Matcher.
You use Matchers to specify what type of condition you are testing to be true (or false).

In our HelloMaybe expect statement, it is clear that eql means string equality.
Note that, there are different types of equality operators in Ruby and consequently different corresponding Matchers in RSpec.

## For running RSpec

```
$ rspec spec -f d
```

Option/flag | Description
--- | ---
-I PATH | Adds PATH to the load (require) path that rspec uses when looking for Ruby source files.
-r, --require PATH | Adds a specific source file to be required in your spec. file(s).
--fail-fast | With this option, rspec will stop running specs after the first Example fails. By default, rspec runs all specified spec files, no matter how many failures there are.
-f, --format FORMATTER | This option allows you to specify different output formats. See the section on Formatters for more details about output formats.
-o, --out FILE | This option directs rspec to write the test results to the output file FILE instead of to standard out.
-c, --color | Enables color in rspec’s output. Successful Example results will display in green text, failures will print in red text.
-b, --backtrace | Displays full error backtraces in rspec’s output.
-w, --warnings | Displays Ruby warnings in rspec’s output.
-P, --pattern PATTERN | Load and run spec files that match the pattern PATTERN. For example, if you pass -p “.rb”, rspec will run all Ruby files, not just the ones that end in “ spec.rb”
-e, --example STRING | This option directs rspec to run all Examples that contain the text STRING in their descriptions.
-t, --tag TAG | With this option, rspec will only run examples that contain the tag TAG. Note that TAG is specified as a Ruby symbol. See the section on RSpec Tags for more details.
