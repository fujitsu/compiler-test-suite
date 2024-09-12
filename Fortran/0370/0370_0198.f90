  
  integer(kind=4),target :: t1(5) = (/11,12,13,14,15/)
  integer(kind=4),pointer,dimension(:) :: pa1 => t1
  
  print *, pa1
end program
