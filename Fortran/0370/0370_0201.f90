  
  integer(kind=4),target,dimension(4) :: t1 = (/1,2,3,4/)
  integer(kind=4),pointer,dimension(:) :: pa1 => t1(2:3)
  
  print *, pa1
end program
