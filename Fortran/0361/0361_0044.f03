  implicit none
  real(4) :: rel01
  real(8) :: rel02
  rel01 = 1 
  rel02 = 2 
  call sub01(rel01,rel02)
  print *,"pass"
contains
  subroutine sub01(p01,p02)
    real(4) :: p01
    real(8) :: p02
    value :: p01,p02
    p01 = p01
    p02 = p02
    return
  end subroutine
end program
