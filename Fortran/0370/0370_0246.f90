  implicit none

  integer,target :: t1 = 5
  integer,target :: t2
  type ty1
     integer :: m1=100
     integer,pointer :: p1 =>t1
     integer :: m2(5)=500
  end type ty1
  type(ty1),allocatable,dimension(:) :: strp

  allocate(strp(10))

  t2 = 7
  strp(7)%p1=>t2
  
  print *, strp(3)%m1
  print *, strp(4)%m2
  print *, strp(5)%p1
  print *, strp(7)%p1

end program
