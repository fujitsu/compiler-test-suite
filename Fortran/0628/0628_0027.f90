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
  allocate(x%p1%p2%p3%p4%aa(1))
end

  print *,"pass"
end
