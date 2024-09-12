
  type ty1
     integer :: t1 = 1
     integer :: t2(3) = (/9,8,7/)
     integer :: t3 = 3
  endtype ty1
  type(ty1),target :: str1
  type(ty1),pointer :: p0
  integer,  pointer :: p1
  integer,  pointer :: p2
  integer,  pointer :: p3(:)
  integer,  pointer :: p4
  integer,  pointer :: p5
  integer,  pointer :: p6

  data p0 /str1/
  data p1 /str1%t1/
  data p2 /str1%t3/
  data p3 /str1%t2/
  data p4 /str1%t2(1)/
  data p5 /str1%t2(2)/
  data p6 /str1%t2(3)/
  
  print *,p0
  print *,p1
  print *,p2
  print *,p3
  print *,p3(1),p3(2),p3(3)
  print *,p4,p5,p6
end program
