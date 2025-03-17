module mod
  type typ_data
    integer :: x, y, z
  end type typ_data

  interface operator(-)
    module procedure comp
  end interface
  interface assignment(=)
    module procedure use_move_01
  end interface
  interface assignment(=)
    module procedure use_move_02
  end interface
contains
  function comp (p1, p2)
    type(typ_data),intent(in):: p1, p2
    add   = p1%x + p2%x + p1%y + p2%y + p1%z + p2%z
    add   = add - 3
    comp = add
  end function

  subroutine use_move_01(p1, p2)
    integer, intent(out) :: p1(1:3)
    type(typ_data), intent(in) :: p2
    p1 = (/p2%x, p2%y, p2%z/)
  end subroutine

  subroutine use_move_02(p1, p2)
    type(typ_data), intent(out) :: p1
    integer, intent(in) :: p2(1:3)
    p1 = typ_data(p2(1), p2(2), p2(3))
  end subroutine
end module

program main
  use mod
  type(typ_data) :: arry_u
  integer :: arry_w(1:3)

  arry_u = (/1, 2, 3/)

  do cnt=1,1
    arry_w = arry_u
    arry_u = 2 * arry_w
    arry_w = arry_u - arry_u
  end do

  print *, "pass"
end
