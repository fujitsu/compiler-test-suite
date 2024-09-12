
  implicit none
  integer,target :: t1 = 5
  integer,target :: ta(2) = (/6,7/)
  type ty1
     integer,pointer :: p0
     integer,pointer :: p1 =>t1
     integer,pointer :: p2 =>ta(2)
  end type ty1
  type (ty1) :: str

  print *, t1
  print *, ta
  print *, str%p1
  print *, str%p2

end program
