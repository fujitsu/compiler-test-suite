
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

  integer, pointer :: p1(:) => str1%t1
  integer, pointer :: p2(:) => str1%t2
  integer, pointer :: p3(:) => str1%t3
  type(ty0), pointer :: p4(:) => str1%t4
  type(ty0), pointer :: p5(:) => str1%t5
  type(ty0), pointer :: p6(:) => str1%t6
  type(ty0), pointer :: p7(:) => str1%t7

  integer, pointer :: pi1 => str1%t1(1)
  integer, pointer :: pi2 => str1%t2(2)
  integer, pointer :: pi3 => str1%t3(3)
  type(ty0), pointer :: pi4 => str1%t4(1)
  type(ty0), pointer :: pi5 => str1%t5(2)
  type(ty0), pointer :: pi6 => str1%t6(1)
  type(ty0), pointer :: pi7 => str1%t7(2)

  integer, pointer :: ps1(:) => str1%t1(1:2)
  integer, pointer :: ps2(:) => str1%t2(2:3)
  integer, pointer :: ps3(:) => str1%t3(1:4)
  type(ty0), pointer :: ps4(:) => str1%t4(3:4)
  type(ty0), pointer :: ps5(:) => str1%t5(4:5)
  type(ty0), pointer :: ps6(:) => str1%t6(1:2)
  type(ty0), pointer :: ps7(:) => str1%t7(2:3)

  integer, pointer :: pv1(:) => str1%t1(1:3:1)
  integer, pointer :: pv2(:) => str1%t2(2:4:2)
  integer, pointer :: pv3(:) => str1%t3(1:4:2)
  type(ty0), pointer :: pv4(:) => str1%t4(5:2:-1)
  type(ty0), pointer :: pv5(:) => str1%t5(5:5:1)
  type(ty0), pointer :: pv6(:) => str1%t6(1:4:2)
  type(ty0), pointer :: pv7(:) => str1%t7(2:5:2)
  
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

