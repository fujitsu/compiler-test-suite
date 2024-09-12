  implicit none
  type tym
     integer :: m1 = 3
     integer :: m2 = 4
  end type tym
  type(tym),target :: tm0 = tym(40,50)
  type(tym),target :: tm1

  type tyt
     integer,pointer :: p0 => tm0%m1
     integer,pointer :: p1 => tm1%m2
  end type tyt
  type(tyt) :: tt0

  print *, tt0%p0
  print *, tt0%p1
  
end program
