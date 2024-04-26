  implicit none
  print *,"pass"
contains
  function fun01(p01,p02,p03)
    integer p01,p02,p03,fun01
    value :: p01,p03
    p01 = 100
    p02 = 100
    p03 = 100
    fun01 = 0
    return
  end function
end program
