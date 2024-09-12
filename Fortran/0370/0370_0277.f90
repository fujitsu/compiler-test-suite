
  implicit none
  integer(kind=4),target :: t1(5) = (/11,12,13,14,15/)

  type ty1
     integer(kind=4),pointer,dimension(:) :: p1 => t1
  end type ty1
  type (ty1) :: str

  print *, str%p1

end program
