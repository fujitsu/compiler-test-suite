call s()
print *,'pass'
end
subroutine s()
type t
integer::ii
end type
type(t),allocatable::ttt
end subroutine
