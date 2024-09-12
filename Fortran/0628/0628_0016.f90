subroutine foo(x)
  type t2
    integer,allocatable :: aa(:)
  end type
  type t1
    type(t2),pointer :: p1
  end type
  type (t1), intent(in) :: x
  deallocate(x%p1%aa)
end

  print *,"pass"
end
