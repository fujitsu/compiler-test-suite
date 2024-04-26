      module mod0
       integer(4)::n
      contains
       integer function sub0(a)
        integer,intent(inout)::a(n)
         forall(i=a(1):a(10)-1)
          a(i)=a(i+1)+i
         end forall
         sub0=0
       end function
      end module

      program main
       use mod0
       integer::a(10)
        n=10
        forall(i=1:n)
          a(i)=i
        end forall
        m=sub0(a)
        print *,'pass'
      end program
