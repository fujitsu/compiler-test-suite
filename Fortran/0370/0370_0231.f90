  integer(kind=4),target,dimension(0) :: ta
  integer(kind=4),target :: tb = 0
  integer(kind=4),pointer,dimension(:) :: p1 => ta

  print *, ta
  print *, tb
  print *, p1
end program
