      program main
        n1=5 ; n2=5
        call sub(n1,n2)
        print *,'pass'
      end program main

      subroutine sub(n1,n2)
       integer::aa(n1)
       integer::bb(n2)
        aa=(/(i,i=1,n1)/)
        bb=(/(i,i=n1-1,0,-1)/)
        aa = aa + bb
        if (any(aa/=(/(n1,i=1,n1)/))) print *,'error'
      end subroutine
