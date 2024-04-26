module mod01
  implicit none
contains
  subroutine sub01()
  contains
    subroutine sub02(p01,p02,p03)
      integer :: p01,p02,p03
      p01 = 100
      p02 = 100
      p03 = 100
      return
    end subroutine 
  end subroutine 
end module

  use mod01
  implicit none

  print *,"pass"
end program
