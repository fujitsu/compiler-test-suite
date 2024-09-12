  implicit none
  integer(kind=2),target,dimension(3) :: a1 = (/9,8,7/)
  integer(kind=2),target,dimension(4) :: a2 = (/1,2,3,4/)

  type tyt
     integer(kind=2),pointer,dimension(:) :: pa1 => a1
     integer(kind=2),contiguous,pointer,dimension(:) :: pa2 => a2
  end type tyt
  type(tyt) :: tt0

  print *, tt0%pa1
  print *, tt0%pa2
end program
