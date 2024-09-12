  integer,target :: s1 = 5
  integer,target :: s2 = 50
  
  type ty1
     integer :: t1 = 10
     integer :: t2 = 20
     integer,pointer :: p1 => s2
  endtype ty1

  type(ty1),target :: str0
  type(ty1),target :: str1 = ty1(3,4,s1)

  str0 = ty1(30,40,s1)
  
  print *,str0%t1,str0%t2,str0%p1
  print *,str1%t1,str1%t2,str1%p1
  
end program
