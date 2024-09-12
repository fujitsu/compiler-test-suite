subroutine sub
  implicit none
  type tym
     integer :: m1 = 30
     integer :: m2 = 30
  end type tym
  type(tym),target :: tm0 = tym(40)
  type(tym),target,save :: tm1

  type tyt
     type(tym),pointer :: p0 => tm0
     type(tym),pointer :: p1 => tm1
  end type tyt
  type(tyt) :: tt0

  print *, tt0%p0
  print *, tt0%p1
end subroutine sub

call sub
end program
