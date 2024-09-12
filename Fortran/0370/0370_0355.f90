
  type ty0
     integer :: tt1(2,2) = reshape((/6,7,8,9/),(/2,2/))
  end type ty0
  type ty1
     integer :: t1(3,2) = reshape((/2,3,4,5,6,7/),(/3,2/))
     type(ty0) :: t2(3,2) = reshape((/ty0(30),ty0(40),ty0(50),ty0(60),ty0(70),ty0(80)/),(/3,2/))
  endtype ty1
  type(ty1),target :: str1

  integer, pointer :: p1(:,:)
  type(ty0), pointer :: p2(:,:)
  data p1 /str1%t1/
  data p2 /str1%t2/
  
  integer, pointer :: pi1
  type(ty0), pointer :: pi2
  data pi1 /str1%t1(2,1)/
  data pi2 /str1%t2(2,2)/
  
  integer, pointer :: ps1(:,:)
  type(ty0), pointer :: ps2(:,:)
  type(ty0), pointer :: ps3(:)
  type(ty0), pointer :: ps4(:)
  data ps1 /str1%t1(2:3,1:2)/
  data ps2 /str1%t2(1:2,1:2)/
  data ps3 /str1%t2(1:2,2)/
  data ps4 /str1%t2(2,1:2)/
  
  integer, pointer :: pv1(:,:)
  type(ty0), pointer :: pv2(:,:)
  data pv1 /str1%t1(1:3:2,1:2:1)/
  data pv2 /str1%t2(3:1:-1,2:1:-1)/
  
  print *,"--------------------"
  print *,p1
  print *,p2
  print *,"--------------------"
  print *,pi1
  print *,pi2
  print *,"--------------------"
  print *,ps1
  print *,ps2
  print *,ps3
  print *,ps4
  print *,"--------------------"
  print *,pv1
  print *,pv2

end program

