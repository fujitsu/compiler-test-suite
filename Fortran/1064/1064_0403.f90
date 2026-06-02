module m
public::operator(+)
interface operator(+)
  function x(x1,x2)
    logical::x,x1,x2
     intent(in) x1,x2
  end function
end interface
end
module m1
use m
private
public :: z
contains
  subroutine z
    if (.true.+.true.) return   
    print *,1001
  end subroutine
end
module m2 
use m1
private
public :: z,zz
contains
  subroutine zz
  end subroutine

end
use m2
call z
call zz
print *,'pass'
end
  function x(x1,x2)
    logical::x,x1,x2
     intent(in) x1,x2
     x=.false.
     if (x1.and.x2) x=.true.
  end function
