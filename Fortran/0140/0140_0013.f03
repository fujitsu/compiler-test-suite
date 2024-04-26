module m
type t
integer::ii
end type
type(t),pointer::ttt
contains
subroutine sss
call sss2
contains
subroutine sss2
type t
integer::ii
end type
type(t),pointer::ttt
end subroutine
end subroutine
end
use m
call sss
print *,'pass'
end
