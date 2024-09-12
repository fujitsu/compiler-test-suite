implicit none
type x
  real::x1=1.0
end type
type (x):: vs
integer::ns
ns= f( vs )
if (ns/=2) print *,101,ns
if (vs%x1/=1) print *,202,vs%x1
print *,'pass'
contains
 elemental function f(d) result(r)
 type(x),value::d
 real :: r
 d%x1=2
 r=d%x1
 end function
end
