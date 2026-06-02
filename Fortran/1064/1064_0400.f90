module m
public::a,operator(+)
public::b,operator(*)
interface operator(+)
  function x(x1,x2)
    logical::x,x1,x2
     intent(in) x1,x2
  end function
end interface
interface operator(*)
  function y(y1,y2)
     intent(in) y1,y2
    logical::y,y1,y2
  end function
end interface
end
module m1
use m
contains
  subroutine z
    if ((.true.+.true.) .and. &
        (.true.*.true.)) return
    print *,1001
  end subroutine
end
module m2 
use m1,only:z,operator(*),operator(+)
private
public :: z,zz
contains
  subroutine zz
    if ((.true.+.true.) .and. &
        (.true.*.true.)) return
    print *,1002
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
  function y(y1,y2)
    logical::y,y1,y2
     intent(in) y1,y2
     y=.false.
     if (y1.and.y2) y=.true.
  end function
