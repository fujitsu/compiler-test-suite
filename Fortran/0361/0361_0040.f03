  implicit none
  real(16) :: rel01
  rel01 = 1
  call sub01(rel01)
  print *,"pass"
contains
  subroutine sub01(p01)
    real(16) :: p01
    p01 = 0
    p01 = p01
    return
  end subroutine
end program
