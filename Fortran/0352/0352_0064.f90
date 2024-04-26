program main
type t2
   character(len=4) :: ca
   complex(kind=8) :: c16
end type t2
type t1
   type(t2) :: tv  = t2('xxx', (2.0_8, 3.0_8))
end type t1
type(t1) :: val(1000)/1000*t1( t2('yyy', (4.0_8, 5.0_8) ) )/

print *, val(4)
end
