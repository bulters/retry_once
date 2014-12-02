retry_once
==========

It retries a block of code, but only once... you can try and recover with a custom proc/lambda/whatevery.

## usage


    retry_exception_once_with(SomeRandomError, lambda { doSomething }) do
      puts "This is a try!"
      raise SomeRandomError
    end
