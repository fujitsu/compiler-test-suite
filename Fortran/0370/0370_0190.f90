
  type ty1
     integer :: t1 = 10
     integer :: t2 = 20
  endtype ty1

  type(ty1),target :: str0 = ty1(3,4)
  type(ty1),pointer :: p0 => str0

  print *,p0%t1,p0%t2
  
end program
