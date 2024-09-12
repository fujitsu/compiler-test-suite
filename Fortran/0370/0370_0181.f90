
module mod
  integer(kind=8),target :: t1 = 5
  integer(kind=8),pointer :: p1 => t1
contains
  subroutine sub
    integer(kind=8),target :: m1 = 10
    integer(kind=8),pointer :: pa => t1
    integer(kind=8),pointer :: pb => m1

    print *, pa
    print *, pb
  end subroutine sub
  
end module mod

program main
  use mod

  print *, p1
  call sub

end program
