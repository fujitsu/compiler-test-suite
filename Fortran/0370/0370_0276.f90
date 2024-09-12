
  implicit none
  integer(kind=4),target :: t1 = 5

  type ty1
     integer(kind=1) :: s0 = 0
     integer(kind=2) :: s1 = 1
     integer(kind=4),pointer :: p1 =>t1
     integer(kind=1) :: s2 = 2
     integer(kind=2) :: s3 = 3
  end type ty1
  type (ty1) :: str

  print *, str%s0,str%s1,str%s2,str%s3
  print *, str%p1
end program
