subroutine s1
real,parameter::c=0.1
real(8),parameter:: c1=atan(c,c)
real(8),parameter:: c2(*)=atan([c],[c])
real(8)::d=(0.1,0.1),d1,d2(1)
d1= atan(d,d)
if (abs(c1-d1)>= 0.000001) print *,101
d2= atan([d],[d])
if (any(abs(c2-d2)>= 0.000001)) print *,102
end
call s1
print *,'pass'
end
