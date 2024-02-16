complex,allocatable :: cmp(:)

allocate (cmp(2))
cmp(:) = [(2,3),(4,5)]
call s1(cmp)
if(SIZE(cmp%re) .ne. 2) print*,101
if(sizeof(cmp%im) .ne. 8) print*,102


        
contains

subroutine s1(cmp1)
complex :: cmp1(*)
real :: rr,qq,jj,kk

rr = cmp1(1)%re
qq = cmp1(1)%im
jj = cmp1(2)%re
kk = cmp1(2)%im
if( rr .ne. 2 ) print*,103
if( qq .ne. 3) print*,104
if( jj .ne. 4) print*,103
if( kk .ne. 5) print*,104
PRINT*,"PASS"



end subroutine

end

