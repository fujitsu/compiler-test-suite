PROGRAM MAIN
IMPLICIT NONE
integer ,allocatable :: ii(:)
integer,allocatable  :: jj
integer  :: kk
integer  :: ll
kk=3
allocate( ii(2),jj,mold=kk,stat=ll)  
if(ll .eq. 0 )then
print*,'pass'
else
print*,'101'
ii(2)=4
end if
END PROGRAM
