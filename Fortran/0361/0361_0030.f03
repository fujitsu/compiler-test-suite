module mod01
  implicit none
contains
  function fun01(p01,p02,p03)
    integer :: p01,p02,p03,fun01
    p01 = 100
    p02 = 100
    p03 = 100
    fun01 = 0
    return
  end function 
end module

  use mod01
  implicit none
  print *,"pass"
end program
