  
  complex(kind=4),target,dimension(2) :: t1 = (/(1.0,2.0),(3.0,4.0)/)
  complex(kind=4),pointer,dimension(:) :: pa1 => t1
  
  print *, pa1
end program
