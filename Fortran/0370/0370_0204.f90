  integer(kind=4),target :: t1(4,3) = reshape((/1,2,3,4,5,6,7,8,9,10,11,12/), (/4,3/))
  integer(kind=4),pointer,dimension(:,:) :: pa1 => t1

  print *, t1
  print *, pa1
  print *, pa1(1,2)
end program
