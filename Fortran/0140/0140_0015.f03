module m
type t
integer::ii
end type
type(t),pointer::ttt
contains
subroutine sss
call sss2
end subroutine
end
use m
call sss
print *,'pass'
end
subroutine sss2
end subroutine
