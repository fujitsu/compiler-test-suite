type p
  real ::x,y
end type
type,extends(p) :: cp
  integer c
end type
type(p)::pv = p(1.,2.)
type(cp)::cpv
cpv=cp(pv,3)
write(1,*)cpv%p
write(1,*)cpv%p%x,cpv%p%y
write(1,*)cpv%x,cpv%y
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) a,b;if (abs(a-1)>0.0001)print *,'error-1'
if (abs(b-2)>0.0001)print *,'error-2'
read(1,*) a,b;if (abs(a-1)>0.0001)print *,'error-3'
if (abs(b-2)>0.0001)print *,'error-4'
read(1,*) a,b;if (abs(a-1)>0.0001)print *,'error-5'
if (abs(b-2)>0.0001)print *,'error-6'
end
