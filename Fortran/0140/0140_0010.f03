call s()
print *,'pass'
contains
subroutine s()
type t
integer::ii
end type
type(t),pointer::ttt
end subroutine
end
