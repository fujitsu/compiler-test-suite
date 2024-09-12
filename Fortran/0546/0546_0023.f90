type t
 integer::x1
 complex,allocatable::c1
end type
type(t):: v1,v2
complex:: cc=(5,6)
v1=t(1,(4,5))
if (v1%x1/=1) print *,101
if (abs(v1%c1-(4,5))>0.000001) print *,102
v2=t(1,cc)
if (v2%x1/=1) print *,201
if (abs(v2%c1-(5,6))>0.000001) print *,202
print *,'pass'
end
