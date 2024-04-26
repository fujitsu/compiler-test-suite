program main
type t1
   integer(kind=1) :: i1
end type t1
type(t1) val(1)/t1(1_1)/

print *, val
end
