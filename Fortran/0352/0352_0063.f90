program main
type t2
   integer(kind=4) :: i4 = 1_4
end type t2
type t1
   type(t2) :: tv
end type t1
type(t1) val(1)/t1(t2(3_4))/

print *, val
end
