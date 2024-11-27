integer(8)::ii
 j=0
call sub(i,ii,j)
print *,'pass'
contains
       subroutine sub(i,ii,j)
       integer(8)::ii
       do i=2,1
         j=j+i
       end do
       if (i/=2)print *,'error-1'
       do ii=2_8,1_8
         j=j+ii
       end do
       if (i/=2)print *,'error-2'
       end subroutine
       end
