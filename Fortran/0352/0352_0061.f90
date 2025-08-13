program main
save
type t1
   logical(kind=4) :: l4
   real(kind=8) :: r8
   integer(kind=8) :: i8
end type t1
type(t1) val(1000000)

print *, val(999999)
end
