PROGRAM main
Complex(kind = 4):: cmp1(2)
complex(kind = 8) :: cmp2(1:4)
integer:: ii
cmp1 = (3.56,7.89)
cmp2%re = 9.87        
ii = 6

call sub(cmp1,ii,cmp2%re)
contains
subroutine sub(cmp3,jj,cmp4)
complex(kind = 4):: cmp3(:)
real(kind = 8):: cmp4(:)
integer :: jj
if(any(cmp3 .ne. (3.56,7.89))) print*,101
if( jj  .ne. 6) print*,102
if (any(cmp4 .ne. 9.87)) print*,103
if (kind(cmp3%re) .ne. 4) print*,104
if (kind(cmp4) .ne. 8) print*,105
if (ubound(cmp3%re,1) .ne. 2) print*,106
if (sizeof(cmp3%re) .ne. 8) print*,107
if (size(cmp3%re) .ne. 2) print*,108
PRINT*,"PASS"

end subroutine sub
end

