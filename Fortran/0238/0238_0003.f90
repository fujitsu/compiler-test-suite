module bank
integer,allocatable:: ncnt(:)
integer,allocatable:: y(:)
!$OMP THREADPRIVATE(ncnt)
!$OMP THREADPRIVATE(y)
end module bank
use bank
allocate(ncnt(3),y(3))
ncnt=(/1,2,3/)
y(1)=1
y(2)=3
n1=1
n2=2
n3=3
write (1,*) ( ncnt(i), i=1,3 ) 
write (1,*) ( ncnt(i), i=y(1),y(2) ) 
write (1,*) ( ncnt(i), i=y(1),y(2),y(1) ) 
write (1,*) ( ncnt(i), i=n1,n3 ) 
write (1,*) ( ncnt(i), i=y(n1),y(n2) ) 
write (1,*) ( ncnt(i), i=y(n1),y(n2),y(n1) ) 
write(1,*)  ncnt(1:3)
call chk
print *,'pass'
end
subroutine chk
integer x(3)
rewind 1
read(1,*) x
if (any(x/=(/1,2,3/)))print *,101
read(1,*) x
if (any(x/=(/1,2,3/)))print *,102
read(1,*) x
if (any(x/=(/1,2,3/)))print *,103
read(1,*) x
if (any(x/=(/1,2,3/)))print *,104
read(1,*) x
if (any(x/=(/1,2,3/)))print *,105
read(1,*) x
if (any(x/=(/1,2,3/)))print *,106
read(1,*) x
if (any(x/=(/1,2,3/)))print *,107
end

