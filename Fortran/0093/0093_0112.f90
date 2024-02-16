PROGRAM test
complex,allocatable :: aa(:,:)
allocate(aa(2,2))
aa(1,1) = (3.55,4.98)
aa(1,2) = (8.54,9.54)
call sub(aa)
if(size(aa%re) .ne. 4) print*,101
if(sizeof(aa%re) .ne. 16) print*,102
if(UBOUND(aa%re,DIM=1) .ne. 2) print*,103
if(UBOUND(aa%re,DIM=2) .ne. 2) print*,104

contains
subroutine sub(bb)
implicit none
complex :: bb(2,*)
real:: ii,jj

ii = bb(1,1)%re
jj = bb(1,2)%im
if( ii .ne. 3.55) print*,105
if( jj .ne. 9.54) print*,106
PRINT*,"PASS"
        
end subroutine sub
END PROGRAM
       

