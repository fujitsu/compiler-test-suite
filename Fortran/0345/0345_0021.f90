      program main
        n=2
        call sub(n)
        print *,'pass'
      end program

      integer(4) function sub0(n)
        integer(4),allocatable::al(:)
        integer(4)::n
         allocate(al(n),stat=ii)
         sub0=ii+1
      end function
      subroutine sub1(n)
        integer(4),allocatable::al(:)
        integer(4),intent(in)::n
         allocate(al(n),stat=ii)
         al=n
      end subroutine
      subroutine sub2(n)
        integer(4),allocatable::al(:)
        integer(4)::n
         allocate(al(n),stat=ii)
         al=n
         if (any(al/=n)) print *,'error1'
         if (size(al)/=n) print *,'error2'
      end subroutine
      integer function sub3(ii)
        integer(4),allocatable::al(:)
         allocate(al(1),stat=ii)
         deallocate(al,stat=jj)
         sub3=ii+jj+1
      end function

      subroutine sub(n)
        integer(4),allocatable::al(:)
        integer,external::sub0,sub3
        ii=sub0(n)
        call sub1(n)
        call sub2(n)
        ii=sub3(ii)
        if (ii/=1) print *,'error3'
      end subroutine
