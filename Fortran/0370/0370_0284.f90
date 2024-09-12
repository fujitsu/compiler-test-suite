
  type ty1
     integer :: t1 = 1
     integer :: t2(3) = (/2,3,4/)
     integer :: t3 = 5
  endtype ty1
  type(ty1),target,dimension(4,4) :: str1

  type tym
     type(ty1),pointer :: p0(:,:) => str1
     type(ty1),pointer :: p1 => str1(1,2)
     type(ty1),pointer :: p2(:) => str1(1:4,2)
     type(ty1),pointer :: p3(:,:) => str1(2:3,2:3)
     type(ty1),pointer :: p4(:,:) => str1(1:4:2,2:4:2)
  end type tym
  type(tym) :: sm
     
  sm%p0(3,3)%t3 = 33
  sm%p0(3,4)%t3 = 44
  str1(1,2)%t2 = 22

  print *,sm%p0
  print *,sm%p1
  print *,sm%p2
  print *,sm%p3
  print *,sm%p4
end program
