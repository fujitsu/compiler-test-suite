  implicit none
  type tym
     integer,dimension(3)   :: m1 = (/10,20,30/)
     integer,dimension(2,3) :: m2 = reshape((/1,2,3,4,5,6/),(/2,3/))
  end type tym
  type(tym),target :: tm0 = tym((/40,50,60/),50)
  type(tym),target :: tm1

  type tyt
     integer,pointer :: p0 => tm0%m1(2)
     integer,pointer :: p1 => tm1%m2(2,3)
  end type tyt
  type(tyt) :: tt0

  print *, tm0
  print *, tm1
  print *, tt0%p0
  print *, tt0%p1
  
end program
