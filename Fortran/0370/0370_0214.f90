
  type ty1
     integer :: t1 = 1
     integer :: t2(3) = (/2,3,4/)
     integer :: t3 = 5
  endtype ty1
  type(ty1),target,dimension(9) :: str1
  type(ty1),pointer :: p0(:) => str1
  type(ty1),pointer :: p1 => str1(1)
  type(ty1),pointer :: p2 => str1(2)
  type(ty1),pointer :: p3 => str1(3)
  type(ty1),pointer :: p4(:) => str1(3:5)
  type(ty1),pointer :: p5(:) => str1(1:8:2)

  p2%t3 = 22
  p3%t2 = 33
  str1(7)%t1 = 77

  print *,p0
  print *,p1
  print *,p2
  print *,p3
  print *,p4
  print *,p5
end program
