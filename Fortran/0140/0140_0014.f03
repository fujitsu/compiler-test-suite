call s()
print *,'pass'
end
subroutine s()
type t
integer::ii
end type
type(t),pointer::ttt
end subroutine

