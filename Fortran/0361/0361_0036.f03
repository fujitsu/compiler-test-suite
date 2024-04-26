  implicit none
  print *,"pass"
end program

function fun01()
  implicit none
  integer :: fun01
  fun01 = 0
contains
  function fun02(p01,p02,p03)
    integer :: p01,p02,p03,fun02
    p01 = 100
    p02 = 100
    p03 = 100
    fun02 = 0
    return
  end function 
end function 
