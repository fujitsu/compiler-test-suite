      module mo
      integer int
      pointer f90_pointer
      contains
      subroutine sub()
      target d1
      f90_pointer=>d1
      d1=100
      print *,f90_pointer
      end subroutine
      end module
      use mo
      call sub()
      end
