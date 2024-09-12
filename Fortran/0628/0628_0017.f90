subroutine foo(x)
  type t2
    integer,allocatable :: aa(:)
  end type
  type t1
    type(t2),pointer :: p1
  end type

  type (t1), intent(in) :: x
  call sub(x%p1%aa)
contains
  subroutine sub(x)
    integer,allocatable :: x(:)
    x = 1
  end subroutine sub
end

  print *,"pass"
end
