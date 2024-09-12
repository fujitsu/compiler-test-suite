  implicit none

  type ty0
     integer :: my1=3
  end type ty0
  
  type ty1
     integer :: m1=100
     type(ty0) :: tm1
  end type ty1
  type(ty1),pointer :: strp

  allocate(strp)
  
  print *, strp

end program
