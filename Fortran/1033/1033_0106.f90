      program main
        call sub(1,4)
        print *,'pass'
      end program main

      subroutine sub(n1,n4)
       integer::aa(4)
       integer::bb(5)
        aa(:)=(/1,2,3,4/)
        bb(:)=(/4,3,2,1,0/)
        aa = aa + bb(n1:n4)
        if (any(aa/=(/5,5,5,5/))) print *,'error'
      end subroutine
