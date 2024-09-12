subroutine foo(x)
  type t4
    integer,allocatable :: aa(:)
  end type
  type t3
    type(t4),pointer :: p3
  end type
  type t2
    type(t3) :: p2
  end type
  type t1
    type(t2) :: p1
  end type
  type (t1), intent(in) :: x
  type (t1) :: z
  z%p1%p2%p3%aa = 1
  x%p1%p2%p3%aa = z%p1%p2%p3%aa
end

  print *,"pass"
end
