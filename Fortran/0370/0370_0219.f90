
  type ty0
     integer :: tt1(3) = 10
  end type ty0
  type ty1
     integer :: t1 = 1
     integer :: t2(3) = (/9,8,7/)
     integer :: t3 = 3
     type(ty0) :: t4
     type(ty0) :: t5 = ty0(20)
     type(ty0) :: t6 = ty0((/22,33,44/))
  endtype ty1
  type(ty1),target :: str1
  type(ty1),pointer :: p0 => str1
  integer,  pointer :: p1 => str1%t1
  integer,  pointer :: p2 => str1%t3
  integer,  pointer :: p3(:) => str1%t2
  integer,  pointer :: p4 => str1%t2(1)
  integer,  pointer :: p5 => str1%t2(2)
  integer,  pointer :: p6 => str1%t2(3)
  type(ty0),pointer :: p7 => str1%t4
  type(ty0),pointer :: p8 => str1%t5
  type(ty0),pointer :: p9 => str1%t6
  
  print *,p0
  print *,p1
  print *,p2
  print *,p3
  print *,p3(1),p3(2),p3(3)
  print *,p4,p5,p6
  print *,p7
  print *,p8
  print *,p9
end program
