  implicit none

  integer,target :: t1 = 5

  type ty1
     integer :: m1=100
     integer,pointer :: p1 =>t1
  end type ty1
  type(ty1),pointer :: strp

  allocate(strp)
  
  print *, strp%m1
  print *, strp%p1

end program
