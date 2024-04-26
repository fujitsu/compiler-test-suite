      program main
        n=2
        call sub(n)
        print *,'pass'
      end program

      module mod
       integer(4),allocatable::al(:)
      contains
       integer(4) function sub0(n)
        integer(4)::n
         allocate(al(n),stat=ii)
         sub0=ii+1
       end function
       subroutine sub1(n)
        integer(4),intent(in)::n
         al=n
       end subroutine
       subroutine sub2(n)
        integer(4)::n
         if (any(al/=n)) print *,'error1'
         if (size(al)/=n) print *,'error2'
       end subroutine
       integer function sub3(ii)
         deallocate(al,stat=jj) 
         sub3=ii+jj+1
       end function
      end module

      subroutine sub(n)
       use mod
        ii=sub0(n)
        call sub1(n)
        call sub2(n)
        ii=sub3(ii)
        if (ii/=2) print *,'error3'
      end subroutine
