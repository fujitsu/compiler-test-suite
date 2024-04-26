      subroutine sub0(a,n)
       integer,intent(inout)::a(n)
        forall(i=1:n)
         a(i)=i
        end forall
      end subroutine

      program main
       integer::a(10)
        n=10
        call sub0(a,n)
        print *,'pass'
      end program
