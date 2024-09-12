module mmm
type t
end type t
contains
subroutine aaa(a,b)
class(t),intent(out)::a
class(t),intent(in)::b
end subroutine 
end module
use mmm
print *,'pass'
end
