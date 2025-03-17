      program main
        call sub()
        print *,'pass'
      end program main

      subroutine sub()
       integer::aa(5)
       integer::bb(4)
        aa(:)=(/1,2,3,4,5/)
        bb(:)=(/4,3,2,1/)
        aa(1:4) = aa(1:4) + bb
        if (any(aa/=(/5,5,5,5,5/))) print *,'error'
      end subroutine
