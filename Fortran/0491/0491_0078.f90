implicit none
type x
  real::x1(100000)=1.0
  real::x2(100000)=1.0
  real::x3(100000)=1.0
  real::x4(100000)=1.0
end type
type (x):: va(2)
integer::na(2)
na(2)= f( va(2) )
if (na(2)/=2) print *,101,na(2)
if (any(va(2)%x1/=1)) print *,202,va(2)%x1
print *,'pass'
contains
 elemental function f(d) result(r)
 type(x),value::d
 real :: r
 d%x1=2
 r=d%x1(1)
 end function
end
