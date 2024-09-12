  
  type ty0
     integer(kind=4) :: t1 = 1
     integer(kind=4) :: t2 = 2
  endtype ty0

  type ty1
  end type ty1

  type(ty0),target :: str0

  type(ty1),target :: str1
  type(ty1),target,dimension(3) :: str2

  type(ty0),pointer :: p0
  type(ty1),pointer :: p1
  type(ty1),pointer :: p2
  data p0 /str0/
  data p1 /str1/
  data p2 /str2(2)/
  
  print *,str0
  print *,str1
  print *,str2

  print *,p0
  print *,p1
  print *,p2
end program
