  implicit none

  integer,target :: t1 = 5

  type ty1
     integer :: m1=100
     integer :: m2(3)=20
     integer :: m3(4)=(/1,2,3,4/)
     integer,pointer :: p1 =>t1
  end type ty1

  type ty2
     type(ty1) :: t1a
     type(ty1) :: t1b
  end type ty2

  type(ty2),pointer :: strp

  allocate(strp)
  
  print *, strp%t1a%m1,strp%t1a%m2,strp%t1a%m3,strp%t1a%p1
  print *, strp%t1b%m1,strp%t1b%m2,strp%t1b%m3,strp%t1b%p1

end program
