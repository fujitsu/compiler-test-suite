module m0
  interface
    function f(d)
    end function
  end interface
end
module m1
use m0
  procedure(f) :: sub
  interface s
     procedure sub
  end interface
end module m1
module m2
  interface
     subroutine e()
      use m1           
     end subroutine
  end interface
contains
  subroutine s1
     use m1
     if (abs(s(0.1)-sin(0.1))>0.00001) print *,1002
  end subroutine
end 

use m2
call s1
print *,'sngg544p : pass'
end
    function sub(d)
      sub=sin(d)
    end function
