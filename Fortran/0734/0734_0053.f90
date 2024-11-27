pointer i
integer(8),pointer::ii
 j=0
allocate(i,ii)
call sub(i,ii,j)
call x
print *,'pass'
contains
       subroutine sub(i,ii,j)
       pointer i
       integer(8),pointer::ii
       do i=2,1
         j=j+i
       end do
       if (i/=2)print *,'error-1'
       do ii=2_8,1_8
         j=j+ii
       end do
       if (i/=2)print *,'error-2'
       end subroutine
       subroutine x
       pointer i
       integer(8),pointer::ii
       allocate(i,ii)
       j=0
       do i=2,1
         j=j+i
       end do
       if (i/=2)print *,'error-11'
       do ii=2_8,1_8
         j=j+ii
       end do
       if (i/=2)print *,'error-12'
       end subroutine
       end
