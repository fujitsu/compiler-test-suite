type a1
  integer::v0
  integer::v1
end type
type,extends(a1)::a2
  real  v2
  complex v3
end type
type (a2):: v
v%a1=a1(v1=1,v0=-1)
v%v2=2.
v%v3=(3,4)
write(10,*)v
call chk
print *,'pass'
end
subroutine chk
complex b
rewind 10
read(10,*) ii,i,a,b;if (i/=1)print *,'error-1'
if (abs(a-2)>0.0001)print *,'error-2'
if (abs(b-(3,4))>0.0001)print *,'error-3'
if (ii/=-1)print *,'error-0'
end
