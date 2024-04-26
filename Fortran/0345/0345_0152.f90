      module o
        integer,allocatable,dimension(:)::a
      end module

      module n
        use o
      end module

      subroutine s()
       use n
        allocate(a(1))
        a=1
        deallocate(a)
      end subroutine

      program main
      call s()
      print *,'pass'
      end
