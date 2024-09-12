module mod
  integer(kind=4),target :: s1 = 1
  integer(kind=8),target :: s2 = 2
  integer(kind=2),target,dimension(3) :: a1 = (/9,8,7/)
  integer(kind=2),target,dimension(4) :: a2 = (/1,2,3,4/)

  type tyt
     integer(kind=8),pointer,public :: ps1 => s2
     integer(kind=4),pointer,private :: ps2 => s1
     integer(kind=2),pointer,public,dimension(:) :: pa1 => a1
     integer(kind=2),pointer,private,dimension(:) :: pa2 => a2
  end type tyt
  type(tyt) :: tt0

contains
  subroutine sub
    print *, tt0%ps1
    print *, tt0%ps2
    print *, tt0%pa1
    print *, tt0%pa2
  end subroutine sub
  
end module mod

program xyz
  use mod
  call sub
  print *, tt0%ps1
  print *, tt0%pa1

end program
