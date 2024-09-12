subroutine s1(d6)
type t
 integer::x1
 complex,allocatable::c1
end type
type(t):: v1,v2
complex:: d1=(4,5),d3(2)=[complex::0, (4,5)],d4,d6
complex,parameter:: d2=(4,5)
v2=t(1,d4())
if (v2%x1/=1) print *,401
if (abs(v2%c1-(4,5))>0.000001) print *,402
contains
complex function d5()
d5=(4,5)
end function
end
complex,parameter:: d6=(4,5)
call s1(d6)
print *,'pass'
end
complex function d4()
d4=(4,5)
end
