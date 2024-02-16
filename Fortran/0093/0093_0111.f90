PROGRAM test
complex,allocatable :: aa(:,:)
allocate(aa(2,2))
aa(1,1) = (2.34,3.56)
aa(1,2) = (4.78,5.98)        
call sub(aa)

contains
subroutine sub(bb)
implicit none
complex :: bb(:,:)
real::rr,ii,jj,kk
rr =  bb(1,1) %re
ii =  bb(1,1) %im
jj =  bb(1,2) %re
kk =  bb(1,2) %im
if (size(aa%re) .ne. 4) print*,101
if (sizeof(aa%im) .ne. 16) print*,102
if (UBOUND(aa%re,1) .ne. 2) print*,103
if (UBOUND(aa%im,2) .ne. 2) print*,104
if ( rr .ne. 2.34) print*,105
if ( ii .ne. 3.56) print*,106
if ( jj .ne. 4.78) print*,107
if ( kk .ne. 5.98) print*,108 
PRINT*,"PASS"
end subroutine sub
END PROGRAM


