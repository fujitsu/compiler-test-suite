module bank
integer,pointer    :: ncnt(:)
!$OMP THREADPRIVATE(ncnt)
end module bank
use bank
allocate(ncnt(3))
ncnt=(/1,2,3/)
write (120,*) ( ncnt(i), i=1,3 )
write(120,*)  ncnt(1:3)
call chk
print *,'pass'
end
subroutine chk
integer x(3)
rewind 120
read(120,*) x
if (any(x/=(/1,2,3/)))print *,101
end

