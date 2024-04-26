  implicit none
  print *,"pass"
end program

subroutine sub01()
  implicit none
contains
  subroutine sub02(p01,p02,p03)
    integer p01,p02,p03
    value :: p01,p03
    p01 = 100
    p02 = 100
    p03 = 100
    return
  end subroutine 
end subroutine 
