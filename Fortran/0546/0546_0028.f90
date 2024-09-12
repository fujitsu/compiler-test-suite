subroutine s1(d6)
type t
 integer::x1
 complex,allocatable::c1
end type
type(t):: v1,v2
complex:: d1=(4,5),d3(2)=[complex::0, (4,5)],d4,d6
complex,parameter:: d2=(4,5)
v1=t(1,(4,5))
if (v1%x1/=1) print *,101
if (abs(v1%c1-(4,5))>0.000001) print *,102
v2=t(1,d1)
if (v2%x1/=1) print *,201
if (abs(v2%c1-(4,5))>0.000001) print *,202
v2=t(1,d2)
if (v2%x1/=1) print *,301
if (abs(v2%c1-(4,5))>0.000001) print *,302
v2=t(1,d3(2))
if (v2%x1/=1) print *,401
if (abs(v2%c1-(4,5))>0.000001) print *,402
v2=t(1,d4())
if (v2%x1/=1) print *,501
if (abs(v2%c1-(4,5))>0.000001) print *,502
v2=t(1,d5())
if (v2%x1/=1) print *,601
if (abs(v2%c1-(4,5))>0.000001) print *,602
v2=t(1,d6)
if (v2%x1/=1) print *,701
if (abs(v2%c1-(4,5))>0.000001) print *,702
v2=t(1,sin((0.1,0.1)))
if (v2%x1/=1) print *,701
if (abs(v2%c1-sin((0.1,0.1)))>0.000001) print *,702
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
