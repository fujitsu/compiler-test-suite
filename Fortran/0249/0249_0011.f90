PROGRAM MAIN
integer ,allocatable :: ii(:,:)
integer ,allocatable :: jj
integer ,allocatable :: kk
integer  :: s
allocate(ii(1,2),jj,kk,mold=1,stat=s)
if( s .eq. 0) then
print*,'pass'
else
print*,101
end if
END PROGRAM
