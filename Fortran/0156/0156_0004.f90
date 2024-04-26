module m1
integer,save :: y(100)
end

subroutine s
integer,save :: x(100)
  x(100)=1
  x( 99)=1
  x( 98)=1
if (x(100)/=1) print *,101,x(100)
if (x( 99)/=1) print *,102,x( 99)
if (x( 98)/=1) print *,103,x( 98)
end

subroutine t
use m1
  y(100)=1
  y( 99)=1
  y( 98)=1
if (y(100)/=1) print *,201,y(100)
if (y( 99)/=1) print *,202,y( 99)
if (y( 98)/=1) print *,203,y( 98)
end



call s

call t
print *,'pass'
end
