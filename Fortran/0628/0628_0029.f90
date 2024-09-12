subroutine foo(x)
  type t5
    integer,allocatable :: aa(:)
  end type
  type t4
    type(t5),pointer :: p4
  end type
  type t3
    type(t4) :: p3
  end type
  type t2
    type(t3) :: p2
  end type
  type t1
    type(t2) :: p1
  end type
  type (t1), intent(in) :: x
  call sub(x%p1%p2%p3%p4%aa)
contains
  subroutine sub(x)
    integer,allocatable :: x(:)
    x = 1
  end subroutine sub
end

  print *,"pass"
end
