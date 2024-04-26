      program main
        n=2
        call sub(n)
        print *,'pass'
      end program

      subroutine sub0(al,n)
        integer(4),allocatable::al(:)
        integer(4)::n
         allocate(al(n))
      end subroutine
      subroutine sub1(al,n)
        integer(4),allocatable::al(:)
        integer(4),intent(in)::n
         al=n
      end subroutine
      subroutine sub2(al,n)
        integer(4),allocatable::al(:)
        integer(4)::n
         if (any(al/=n)) print *,'error'
         if (size(al)/=n) print *,'error'
      end subroutine
      subroutine sub3(al)
        integer(4),allocatable::al(:)
         deallocate(al)
      end subroutine

      subroutine sub(n)
       integer(4),allocatable::al(:)
       interface
         subroutine sub0(al,n)
           integer(4),allocatable::al(:)
           integer(4)::n
         end subroutine
         subroutine sub1(al,n)
           integer(4),allocatable::al(:)
           integer(4),intent(in)::n
         end subroutine
         subroutine sub2(al,n)
           integer(4),allocatable::al(:)
           integer(4)::n
         end subroutine
         subroutine sub3(al)
           integer(4),allocatable::al(:)
         end subroutine
       end interface
        call sub0(al,n)
        call sub1(al,n)
        call sub2(al,n)
        call sub3(al)
      end subroutine
