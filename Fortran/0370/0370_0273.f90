
  implicit none
  integer,target :: t1 = 5
  type ty1
     integer,pointer :: p1 =>t1
  end type ty1
  type (ty1) :: str

  print *, str%p1
end program
