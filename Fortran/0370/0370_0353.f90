
  type ty0
     integer :: tt1(3) = (/6,7,8/)
  end type ty0
  type ty1
     integer :: t1(4) = 0
     integer :: t2(4) = (/2,3,4,5/)
     integer :: t3(4) = 5
     type(ty0) :: t4(5)
     type(ty0) :: t5(5) = ty0(20)
     type(ty0) :: t6(5) = (/ty0(30),ty0(40),ty0(50),ty0(60),ty0(70)/)
     type(ty0) :: t7(5) = (/ty0((/2,3,4/)),ty0((/-2,-3,-4/)),ty0((/5,6,7/)),ty0((/-5,-6,-7/)),ty0((/8,8,9/))/)
  endtype ty1
  type(ty1),target :: str1

  integer, pointer :: p1(:)
  integer, pointer :: p2(:)
  integer, pointer :: p3(:)
  type(ty0), pointer :: p4(:)
  type(ty0), pointer :: p5(:)
  type(ty0), pointer :: p6(:)
  type(ty0), pointer :: p7(:)
  data p1 /str1%t1/
  data p2 /str1%t2/
  data p3 /str1%t3/
  data p4 /str1%t4/
  data p5 /str1%t5/
  data p6 /str1%t6/
  data p7 /str1%t7/
  
  integer, pointer :: pi1
  integer, pointer :: pi2
  integer, pointer :: pi3
  type(ty0), pointer :: pi4
  type(ty0), pointer :: pi5
  type(ty0), pointer :: pi6
  type(ty0), pointer :: pi7
  data pi1 /str1%t1(1)/
  data pi2 /str1%t2(2)/
  data pi3 /str1%t3(3)/
  data pi4 /str1%t4(1)/
  data pi5 /str1%t5(2)/
  data pi6 /str1%t6(1)/
  data pi7 /str1%t7(2)/
  
  integer, pointer :: ps1(:)
  integer, pointer :: ps2(:)
  integer, pointer :: ps3(:)
  type(ty0), pointer :: ps4(:)
  type(ty0), pointer :: ps5(:)
  type(ty0), pointer :: ps6(:)
  type(ty0), pointer :: ps7(:)
  data ps1 /str1%t1(1:2)/
  data ps2 /str1%t2(2:3)/
  data ps3 /str1%t3(1:4)/
  data ps4 /str1%t4(3:4)/
  data ps5 /str1%t5(4:5)/
  data ps6 /str1%t6(1:2)/
  data ps7 /str1%t7(2:3)/
  
  integer, pointer :: pv1(:)
  integer, pointer :: pv2(:)
  integer, pointer :: pv3(:)
  type(ty0), pointer :: pv4(:)
  type(ty0), pointer :: pv5(:)
  type(ty0), pointer :: pv6(:)
  type(ty0), pointer :: pv7(:)
  data pv1 /str1%t1(1:3:1)/
  data pv2 /str1%t2(2:5:2)/
  data pv3 /str1%t3(1:4:2)/
  data pv4 /str1%t4(5:2:-1)/
  data pv5 /str1%t5(5:5:1)/
  data pv6 /str1%t6(1:4:2)/
  data pv7 /str1%t7(2:5:2)/
  
  print *,"--------------------"
  print *,p1
  print *,p2
  print *,p3
  print *,p4
  print *,p5
  print *,p6
  print *,p7
  print *,"--------------------"
  print *,pi1
  print *,pi2
  print *,pi3
  print *,pi4
  print *,pi5
  print *,pi6
  print *,pi7
  print *,"--------------------"
  print *,ps1
  print *,ps2
  print *,ps3
  print *,ps4
  print *,ps5
  print *,ps6
  print *,ps7
  print *,"--------------------"
  print *,pv1
  print *,pv2
  print *,pv3
  print *,pv4
  print *,pv5
  print *,pv6
  print *,pv7

end program

