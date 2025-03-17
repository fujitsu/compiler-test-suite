subroutine s1
a=1
b=2
c=3
d=4
!$OMP ATOMIC
a = a + ( b + c + d )
if (a/=10)print *,'error-1'
end
subroutine s2
integer a(2),x,y,z
x=1
y=3
z=1
a(2)=5
call ss2(a,x,y,z)
contains
subroutine ss2(a,x,y,z)
integer,optional:: a(2),x,y,z
i=2
!$OMP ATOMIC
a(i) = max(x,y,a(i),z)
if (a(2)/=5)print *,'error-2'
end subroutine
end
call s1
call s2
print *,'pass'
end
