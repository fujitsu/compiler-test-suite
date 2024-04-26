program main
type t2
   integer(kind=4) :: i4 = 1_4
end type t2
type t1
   type(t2) :: tv = t2(3_4)
end type t1
type(t1) val(1)

print *, val
end
