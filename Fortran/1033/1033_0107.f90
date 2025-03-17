      program main
        call sub(1,4)
        print *,'pass'
      end program main

      subroutine sub(n1,n4)
       integer::aa(5)
       integer::bb(4)
        aa(:)=(/1,2,3,4,5/)
        bb(:)=(/4,3,2,1/)
        aa(n1:n4) = aa(n1:n4) + bb
        if (any(aa/=(/5,5,5,5,5/))) print *,'error'
      end subroutine
