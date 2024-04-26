      module mod0
       integer(4)::n
      contains
       subroutine sub0(a)
        integer,intent(inout)::a(n)
         forall(i=1:n)
          a(i)=i
         end forall
       end subroutine
      end module

      program main
       use mod0
       integer::a(10)
        n=10
        call sub0(a)
        print *,'pass'
      end program
