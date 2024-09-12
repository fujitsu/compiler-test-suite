
  implicit none
  type ty2
     integer(kind=1) :: s0 = 100
     integer(kind=2) :: s1 = 200
     integer(kind=4) :: s2 = 300
     integer(kind=8) :: s3 = 400
  end type ty2
  type (ty2) :: str2
  print *,str2
end program
