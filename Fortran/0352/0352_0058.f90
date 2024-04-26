program main
type t1
   complex(kind=8) :: c16
   character(len=4) :: ca
end type t1
type(t1) val(10000)/10000*t1((2.0_8, 3.0_8),'xyz')/

print *, val(9999)
end
