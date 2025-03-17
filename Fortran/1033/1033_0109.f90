      program main
        call sub(n1,n2)
        print *,'pass'
      end program main

      subroutine sub(n1,n2)
       integer::aa(5)
       integer::bb(5)
       save::aa
       save::bb
        aa(:)=(/1,2,3,4,5/)
        bb(:)=(/4,3,2,1,0/)
        aa = aa + bb
        if (any(aa/=(/5,5,5,5,5/))) print *,'error'
      end subroutine
