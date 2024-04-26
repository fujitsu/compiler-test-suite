  implicit none
  type ::ty01
    sequence
    integer :: int01
  end type
  type(ty01) :: struct01
  struct01 = ty01(0)
  call sub01(struct01)
  print *,"pass"
contains
  subroutine sub01(p01)
    type ::ty01
      sequence
      integer :: int01
    end type
    type(ty01) :: p01
    value :: p01
    p01 = ty01(1)

    return
  end subroutine
end program
