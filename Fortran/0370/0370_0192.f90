  
  type ty1
     integer :: t1 = 1
     integer,dimension(3) :: t2
  endtype ty1

  type(ty1),target :: str0 = ty1(4,(/5,6,7/))
  type(ty1),pointer :: p0 => str0

  print *,p0%t1
  print *,p0%t2
  
end program
