program main
type t1
   integer(kind=2) :: i2 = 2
end type t1
type(t1) val(1000)

print *, val(999)
end
