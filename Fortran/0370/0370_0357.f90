
  type ty0
     integer(kind=8) :: s1(5) = 5
     integer(kind=1) :: s2 = 1
     integer(kind=4) :: s3 = 100
  end type ty0
  type ty1
     integer(kind=4) :: t1 = 1
     integer(kind=2) :: t2(3) = (/9,8,7/)
     type(ty0)       :: str0
     integer(kind=4) :: t3 = 3
  endtype ty1
  type(ty1),target :: str1

  type(ty1),pointer :: p0
  type(ty0),pointer :: p1
  data p0 /str1/
  data p1 /str1%str0/
  
  integer(kind=4),pointer :: p3
  integer(kind=2),pointer :: p4
  integer(kind=2),pointer :: p5
  integer(kind=2),pointer :: p6
  integer(kind=4),pointer :: p7
  data p3 /str1%t1/
  data p4 /str1%t2(1)/
  data p5 /str1%t2(2)/
  data p6 /str1%t2(3)/
  data p7 /str1%t3/

  integer(kind=8),pointer :: pa
  integer(kind=8),pointer :: pb
  integer(kind=1),pointer :: pc
  integer(kind=4),pointer :: pd
  data pa /str1%str0%s1(1)/
  data pb /str1%str0%s1(5)/
  data pc /str1%str0%s2/
  data pd /str1%str0%s3/
  
  print *,p0
  print *,p1

  print *,p3
  print *,p4
  print *,p5
  print *,p6
  print *,p7

  print *,pa
  print *,pb
  print *,pc
  print *,pd
end program
