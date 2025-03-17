      module mo 
      target d1
      contains
      subroutine sub()
      pointer f90_pointer
      f90_pointer=>d1
      d1=100
      print *,f90_pointer
      end subroutine
      end module

      use mo
      call sub()
      end
