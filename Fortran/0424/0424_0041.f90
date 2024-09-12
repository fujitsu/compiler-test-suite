module m
  procedure(),pointer::p
contains
  subroutine s
    call p()
  end subroutine
  subroutine ss
    print *,'pass'
  end subroutine
end

use m
p=>ss
call s
end
