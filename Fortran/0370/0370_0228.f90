
  type ty1
     integer :: t1 = 10
     integer :: t2 = 20
  endtype ty1
  type(ty1),target :: str0 = ty1(3,4)
  integer(kind=4),target :: t1(5) = (/11,12,13,14,15/)

  type(ty1),pointer :: p0 => str0
  integer(kind=4),pointer,dimension(:) :: p1 => t1
  
  print *,p0%t1,p0%t2
  print *,p1
  
end program
