type a1
  integer::v1
end type
type,extends(a1)::a2
  real  v2
  complex v3
end type
type (a2):: v
v%v1=1
v%v2=2.
v%v3=(3,4)
write(1,*)v
call chk
print *,'pass'
end
subroutine chk
complex b
rewind 1
read(1,*) i,a,b;if (i/=1)print *,'error-1'
if (abs(a-2)>0.0001)print *,'error-2'
if (abs(b-(3,4))>0.0001)print *,'error-3'
end
