  implicit none
  integer(1) :: int01
  integer(2) :: int02
  integer(4) :: int03
  integer(8) :: int04
  int01 = 1
  int02 = 1
  int03 = 1
  int04 = 1
  call sub01(int01,int02,int03,int04)
  print *,"pass"
contains
  subroutine sub01(p01,p02,p03,p04)
    integer(1) :: p01
    integer(2) :: p02
    integer(4) :: p03
    integer(8) :: p04
    value :: p01,p02,p03,p04
    p01 = p01
    p02 = p02
    p03 = p03
    p04 = p04
    return
  end subroutine
end program
