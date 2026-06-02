module m0
  interface
    function x(k)
    end 
  end interface
end
module m1
use m0
  procedure(f  )          :: sb
  procedure(x  )          :: su
  procedure(sin), pointer :: sub
  interface s
     procedure sub,sb,su
  end interface
contains
  function f()
    f=sin(0.1)
  end
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
     sub=>sin
     if (abs(s(0.1)-sin(0.1))>0.00001) print *,1002
     if (abs(s(   )-sin(0.1))>0.00001) print *,1003
     if (abs(s(1  )-sin(0.1))>0.00001) print *,1004
  end subroutine
end 

use m2
call s1
print *,'sngg552p : pass'
end
  function sb()
    sb=sin(0.1)
  end
    function su(k)
      if (k/=1) print *,6001
      su=sin(0.1)
    end 
