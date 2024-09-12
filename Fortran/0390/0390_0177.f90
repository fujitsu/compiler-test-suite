module mmm
type t
contains
generic::assignment(=)=>aaa
procedure,private::aaa
end type t
contains
subroutine aaa (a,b)
class(t),intent(inout)::a
class(t),intent(in)::b
end subroutine 
end module
use mmm
print *,'pass'
end
