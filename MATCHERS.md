##Equality/Identity Matchers
Matchers to test for object or value equality.

###Matcher  ###Description                              ###Example
* eq        Passes when actual == expected              expect(actual).to eq expected
* eql       Passes when actual.eql?(expected)           expect(actual).to eql expected
* be        Passes when actual.equal?(expected)         expect(actual).to be expected
* equal     Also passes when actual.equal? (expected)   expect(actual).to equal expected

##Comparison Matchers
Matchers for comparing to values

###Matcher    ###Description                            ###Example
* >           Passes when actual > expected             expect(actual).to be > expected
* >=          Passes when actual >= expected            expect(actual).to be >= expected
* <           Passes when actual < expected             expect(actual).to be < expected
* <=          Passes when actual <= expected            expect(actual).to be <= expected

* be_between  Passes when actual is <= min and          expect(actual).to be_between(min, max).inclusive
  inclusive   >= max

* be_between  Passes when actual is < min and           expet(actual).to be_between(min, max).exclusive
  exclusive   > max

* match       Passes when actual matches a regular      expect(actual).to match(/regex/)
              expression

##Class/Type Matchers
Matchers for testing the type or class of objects

###Matcher        ###Description                                              ###Example
* be_instance_of  Passes when actual is an instance of the expected class     expect(actual).to be_instance_of(Expected)

* be_kind_of      Passes when actual is an instance of the expected class or  expect(actual).to be_kind_of(Expected)
                  any of its parent classes                                   expect(3.5).to be_kind_of Numeric

* respond_to      Passes when actual responds to the specified method         expect(actual).to respond_to(expected)
                                                                              expect(somestring).to respond_to(:length)
##True/False/Nil Matchers
Matchers for testing whether a value is true, false or nil.

###Matcher    ###Description                            ###Example
* be true	    Passes when actual == true	              expect(actual).to be true
* be false	  Passes when actual == false	              expect(actual).to be false
* be_truthy	  Passes when actual is not false or nil    expect(actual).to be_truthy
* be_falsey	  Passes when actual is false or nil	      expect(actual).to be_falsey
* be_nil	    Passes when actual is nil	                expect(actual).to be_nil

##Error Matchers
Matchers for testing, when a block of code raises an error.

###Matcher                        ###Description                                                           ###Example
* raise_error(ErrorClass)	        Passes when the block raises an error of type ErrorClass.	               expect {block}.to raise_error(ErrorClass)
* raise_error("error message")	  Passes when the block raise an error with the message “error message”.   expect {block}.to raise_error(“error message”)
* raise_error(ErrorClass,         Passes when the block raises an error of type ErrorClass with            expect {block}.to raise_error(ErrorClass,“error message”)
  "error message")                the message “error message”
