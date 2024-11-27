module mod01
implicit none
  integer,protected :: iii
contains
  subroutine sub01()
    call sub02(iii)
  end subroutine
  subroutine sub02(p1)
    integer,intent(out) :: p1
    p1 = 1
  end subroutine
end module

  use mod01
  call sub01()
  print *,'pass'
end
