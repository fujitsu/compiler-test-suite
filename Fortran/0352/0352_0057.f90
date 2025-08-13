program main
save
type t1
   real(kind=4) :: r4
end type t1
type(t1) val(1000)

print *, val(10)
end
