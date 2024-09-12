  integer,target :: s1 = 5
  integer,target :: s2 = 50
  integer,target :: s3 = 7
  integer,target :: s4 = 70

  type ty0
     integer,pointer :: p1 => s1
     integer,pointer :: p2 => s2
  end type ty0
  
  type ty1
     integer :: t1 = 1
     integer :: t2 = 2
     type(ty0) :: ta = ty0(s3,s4)
  endtype ty1

  type(ty1),target :: str1

  print *,str1%ta%p2
  
end program
