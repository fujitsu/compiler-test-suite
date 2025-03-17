      program main
        call sub(n1,n2)
        print *,'pass'
      end program main

      subroutine sub(n1,n2)
       integer::aa(5)
       integer::bb(5)
        aa(:)=(/1,2,3,4,5/)
        bb(:)=(/4,3,2,1,0/)
        aa = aa(1:5:1) + bb(5:1:-1)
        if (any(aa/=(/1,3,5,7,9/))) print *,'error'
      end subroutine
