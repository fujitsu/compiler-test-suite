module bank
integer,allocatable:: ncnt(:)
!$OMP THREADPRIVATE(ncnt)
end module bank
use bank
allocate(ncnt(3))
ncnt=(/1,2,3/)
write (1,*) ( ncnt(i), i=1,3 )
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
if (any(x/=(/1,2,3/)))print *,101
end

