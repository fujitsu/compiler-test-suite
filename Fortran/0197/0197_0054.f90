module m1
Type t
     integer :: ii=1
   Contains
      Procedure:: proc1=>fun  
end type t
contains
function fun( x)
class (t),intent(in):: x
fun=x% ii
end function
end
use m1
type (t):: x
if (fun(x)/=1) print *,201
print *,'pass'
end
