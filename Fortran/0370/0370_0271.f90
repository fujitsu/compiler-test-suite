
  type ty1
     integer :: t1 = 10
     integer :: t2 = 20
  endtype ty1

  type(ty1),target :: str0 = ty1(3,4)

  print *,str0
  
end program
