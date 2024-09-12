subroutine s1
type t
 integer::x1
 complex,allocatable::c1
end type
type(t):: v1,v2
complex:: d3(2)=[complex::0, (4,5)]
complex,parameter:: d2=(4,5)
v2=t(1,d3(2))
if (v2%x1/=1) print *,401
if (abs(v2%c1-(4,5))>0.000001) print *,402
end
call s1
print *,'pass'
end
