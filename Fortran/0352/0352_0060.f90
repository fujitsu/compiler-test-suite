program main
type t1
   logical(kind=2) :: l2
   real(kind=4) :: r4
   integer(kind=4) :: i4
end type t1
type(t1) val(1000)/1000*t1(.FALSE._2, 4.0_4,3)/

print *, val(999)
end
