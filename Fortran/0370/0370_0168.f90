  integer(kind=8),target,dimension(4) :: a1 = (/1,2,3,4/)
  integer(kind=8),pointer :: p1 => a1(1)
  integer(kind=8),pointer :: p2 => a1(4)
  integer(kind=8),pointer :: p3
  integer(kind=8),pointer :: p4
  integer(kind=8),pointer :: p5 => NULL()

  data p3 /a1(2)/

  p4=>a1(1)
  p5=>a1(3)

  print *, p1
  print *, p2
  print *, p3
  print *, p4
  print *, p5

  print *, a1

end program
  
