  integer(kind=1),target :: t1(1,1) = 1
  integer(kind=1),pointer,dimension(:,:) :: pa1 => t1

  print *, t1(1,1)
  print *, pa1
end program
