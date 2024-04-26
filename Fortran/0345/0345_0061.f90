      integer function sub0(a,n)
       integer,intent(inout)::a(n)
        forall(i=a(1):a(10)-1)
         a(i)=a(i+1)+i
        end forall
        sub0=0
      end function

      program main
       integer::a(10)
       integer,external::sub0
        n=10
        forall(i=1:n)
          a(i)=i
        end forall
        m=sub0(a,n)
        print *,'pass'
      end program
