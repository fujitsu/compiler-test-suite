program main
type t2
   integer(kind=4) :: i4 = 4_4
   real(kind=8) :: r8 = 2.0_8
end type t2
type t1
   type(t2) :: tv
end type t1
type(t1) :: val(10000)/10000*t1(t2(8_4,4.0_8))/

print *, val(4)
end
