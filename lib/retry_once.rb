module Kernel
  def retry_exception_once_with(__exception, __proc_or_symbol, __retried=false, &__body)
    begin
      __body.call
    rescue *(Array(__exception))
      raise if __retried
      if not __retried
        if Symbol === __proc_or_symbol
          send(f)
        else
          __proc_or_symbol.call
        end
        retry_exception_once_with(__exception, __proc_or_symbol, true, &__body)
      end
    end
  end
end
