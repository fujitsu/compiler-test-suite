module bank
integer,allocatable:: ncnt(:,:,:)
!$OMP THREADPRIVATE(ncnt)
end module bank
use bank
allocate(ncnt(3,4,5))
ncnt=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))
write (121,*) ((( ncnt(k1,k2,k3), k1=1,3),k2=1,4),k3=1,5 ) 
write(121,*)  ncnt(:3,:4,:5)
call chk
print *,'pass'
end
subroutine chk
integer x(3,4,5)
rewind 121
read(121,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,101
read(121,*) x
if (any(x/=reshape((/(k,k=1,3*4*5)/),(/3,4,5/))))print *,101
end

