
module mod
  integer(kind=4),target :: ms1 = 3
  type mty0
     integer(kind=4),pointer :: mp1 => ms1
     integer(kind=4),pointer :: mp2
  end type mty0

end module mod

subroutine sub
  use mod
  integer(kind=4),target :: n1 = 4
  type ty0
     integer(kind=4),pointer :: mp1 => n1
     integer(kind=4),pointer :: mp2
     integer(kind=4),pointer :: mp3 => ms1
  end type ty0

end subroutine sub

program main
  use mod
  call sub

  print *,"OK"
end program
