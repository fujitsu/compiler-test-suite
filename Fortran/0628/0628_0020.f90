subroutine foo(x)
  type t3
    integer,allocatable :: aa(:)
  end type
  type t2
    type(t3),pointer :: p2
  end type
  type t1
    type(t2),pointer :: p1
  end type
  type (t1), intent(in) :: x
  deallocate(x%p1%p2%aa)
end

  print *,"pass"
end