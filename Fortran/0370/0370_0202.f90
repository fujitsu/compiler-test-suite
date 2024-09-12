  integer(kind=2),target :: t1(5,2) = reshape((/1,2,3,4,5,6,7,8,9,10/), (/5,2/))  
  integer(kind=2),pointer,dimension(:,:) :: pa1 => t1
  
  print *, pa1
  print *, pa1(5,1)
  print *, pa1(1,2)
  print *, pa1(4,2)
end program
