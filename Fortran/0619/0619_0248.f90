      program einl
        n=2
        call sub(n)
        print *,'pass'
      end program

      integer(4) function sub0(al,n)
        integer(4),allocatable::al(:)
        integer(4)::n
         allocate(al(n),stat=ii)
         sub0=ii+1
      end function
      subroutine sub1(al,n)
        integer(4),allocatable::al(:)
        integer(4),intent(in)::n
         al=n
      end subroutine
      subroutine sub2(al,n)
        integer(4),allocatable::al(:)
        integer(4)::n
         if (any(al/=n)) print *,'error1'
         if (size(al)/=n) print *,'error2'
      end subroutine
      integer function sub3(al,ii)
        integer(4),allocatable::al(:)
         deallocate(al,stat=jj)
         sub3=ii+jj+1
      end function

      subroutine sub(n)
        integer(4),allocatable::al(:)
        interface
          integer(4) function sub0(al,n)
            integer(4),allocatable::al(:)
            integer(4)::n
          end function
          subroutine sub1(al,n)
            integer(4),allocatable::al(:)
            integer(4),intent(in)::n
          end subroutine
          subroutine sub2(al,n)
            integer(4),allocatable::al(:)
            integer(4)::n
          end subroutine
          integer function sub3(al,ii)
            integer(4),allocatable::al(:)
          end function
        end interface
        ii=sub0(al,n)
        call sub1(al,n)
        call sub2(al,n)
        ii=sub3(al,ii)
        if (ii/=2) print *,'error3'
      end subroutine
