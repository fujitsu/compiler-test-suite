
  implicit none
  integer,target :: t1 = 5
  integer,target :: ta(2) = (/6,7/)
  type ty1
     integer :: s1
     integer,pointer :: p1
     integer,pointer :: p2
  end type ty1
  type (ty1) :: str

  data str%s1 /100/
  data str%p1 /t1/
  data str%p2 /ta(2)/

  print *, str%s1
  print *, str%p1
  print *, str%p2

end program