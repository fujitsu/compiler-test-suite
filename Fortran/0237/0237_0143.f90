module bank
integer,pointer    :: ncnt(:)
!$OMP THREADPRIVATE(ncnt)
end module bank
use bank
allocate(ncnt(3))
write(130,*) (/1,2,3/)
write(130,*) (/1,2,3/)
rewind 130
read (130,*) ( ncnt(i), i=1,3 )
call chk
read(130,*)  ncnt(1:3)
call chk
print *,'pass'
end
subroutine chk
use bank,x=>ncnt
if (any(x/=(/1,2,3/)))print *,101
end

