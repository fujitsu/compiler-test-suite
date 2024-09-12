  integer(kind=4),target :: t1(5)
  integer(kind=4),pointer,dimension(:) :: pa1 => t1
  print *, 'pass'
end 
