module m1
  interface operator(.x.)
    module procedure kf
  end interface
  type x
    integer::x1
  end type
  contains
    function kf(d)
      type(x),intent(in):: d
      kf=d%x1
    end function
end
use m1
type (x):: v
v%x1=2
if (10 * .x. v/=20) print *,101
if (10 - .x. v/=8)  print *,201
print *,'pass'
end
     
  
