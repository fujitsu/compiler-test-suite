      program main
       integer(4)::aa(10)
       interface 
        subroutine sub(aa,n,m)
         integer(4),target ,dimension(n)::aa
         integer(4)::n,m
        end subroutine 
       end interface 
        n=10
        m=0
        aa=(/(i,i=1,n)/)
        call sub(aa,n,m)
        if (m/=55) print *,'error'
        print *,'pass'
      end program

      subroutine sub(aa,n,m)
       integer(4),target ,dimension(n)::aa
       integer(4),pointer,dimension(:)::pp
        pp=>aa
        do i=1,n 
          m=m+pp(i)
        enddo
        nullify(pp)
      end subroutine
