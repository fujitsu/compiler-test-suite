module m1
Type t
     integer :: ii=1
   Contains
      Procedure:: proc1=>fun,f  
end type t
contains
function fun( x)
class (t),intent(in):: x
fun=x% ii
end function
function f( x,k)
class (t),intent(in):: x
integer,intent(in)::k
f=x% ii+k
end function
end
use m1
type (t):: x
if (fun(x)/=1) print *,201
if (f(x,1)/=2) print *,202
print *,'pass'
end
