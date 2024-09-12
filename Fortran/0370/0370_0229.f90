  integer(kind=4),target,dimension(0) :: ta
  integer(kind=4),target,dimension(4) :: tb = 5
  integer(kind=4),pointer,dimension(:) :: p1 => ta
  integer(kind=4),pointer              :: pa => tb(1)
  integer(kind=4),pointer,dimension(:) :: pb => tb

  print *, ta
  print *, p1

  print *, pa
  print *, pb
end program
