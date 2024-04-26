subroutine sss
use mmm
call aaa
end subroutine
module mmm
contains
subroutine aaa
type t
end type
type(t),allocatable::ttt
end subroutine
end  
call sss
print *,'pass'
end
