subroutine s1(d6)
type t
 integer::x1
 complex,allocatable::c1
end type
type(t):: v2
complex:: d6
v2=t(1,d6+d6)
if (v2%x1/=1) print *,401
if (abs(v2%c1-(4,5)*2)>0.000001) print *,402
end
complex,parameter:: d6=(4,5)
call s1(d6)
print *,'pass'
end
