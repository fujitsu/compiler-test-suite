      module o
        integer,allocatable,dimension(:)::a
      end module

      module n
        use o
      end module

      module m
       use n
      contains
        subroutine s()
         allocate(a(1))
         a=1
         deallocate(a)
        end subroutine
      end module

      program main
       use m
        call s()
        print *,'pass'
      end
