
  type ty1
     integer :: t1 = 1
     integer :: t2(3) = (/2,3,4/)
     integer :: t3 = 5
  endtype ty1
  type(ty1),target,dimension(4,4) :: str1
  type(ty1),pointer :: p0(:,:)
  type(ty1),pointer :: p1
  type(ty1),pointer :: p2(:)
  type(ty1),pointer :: p3(:,:)
  type(ty1),pointer :: p4(:,:)

  data p0 /str1/
  data p1 /str1(1,2)/
  data p2 /str1(1:4,2)/
  data p3 /str1(2:3,2:3)/
  data p4 /str1(1:4:2,2:4:2)/
  
  str1(1,2)%t2 = 22
  p0(3,3)%t3 = 33
  p0(3,4)%t3 = 44

  print *,p0
  print *,p1
  print *,p2
  print *,p3
  print *,p4
end program
