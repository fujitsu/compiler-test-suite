contains
subroutine sub01(p1)
  type :: ty01
    integer :: int01
  end type
  type(ty01) :: p1
  value :: p1
  p1 = ty01(1)
  return
end subroutine
end
