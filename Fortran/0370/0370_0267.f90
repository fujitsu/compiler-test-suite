  
  implicit none
  integer,target :: t1 = 5
  integer,target :: ta(2) = (/6,7/)

  type ty1
     integer,pointer :: p0
     integer,pointer :: p1 =>t1
     integer,pointer :: p2 =>ta(2)
  end type ty1

  type ty2
     integer :: s0 = 100
     integer :: s1 = 200
  end type ty2
  type(ty2),target :: cstr
  
  type tym
     integer,pointer :: p1
     type(ty1) :: t1
     type(ty2),pointer :: t2 => cstr
  end type tym
  type(tym) :: str

  print *, str%t1%p1
  print *, str%t1%p2
  print *, str%t2

end program
