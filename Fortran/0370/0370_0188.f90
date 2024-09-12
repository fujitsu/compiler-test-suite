
module mod
  integer(kind=4),target :: ms1 = 3
  type mty0
     integer(kind=4),pointer :: mp1 => ms1
     integer(kind=4),pointer :: mp2
  end type mty0
  type(mty0) :: str0
  type(mty0),target :: str1
  type(mty0),pointer :: str2
  
end module mod

subroutine sub
  use mod
  integer(kind=4),target :: n1 = 4
  type ty0
     integer(kind=4),pointer :: mp1 => n1
     integer(kind=4),pointer :: mp2
     integer(kind=4),pointer :: mp3 => ms1
  end type ty0
  type(ty0) :: stra
  type(ty0),target :: strb
  type(ty0),pointer :: strc
  
end subroutine sub

program main
  use mod
  call sub

  print *,"OK"
end program
