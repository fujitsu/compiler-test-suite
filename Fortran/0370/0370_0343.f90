
module mod
  integer(kind=8),target :: t1
  integer(kind=8),pointer :: p1
  data t1 /5/
  data p1 /t1/
contains
  subroutine sub
    integer(kind=8),target :: m1
    integer(kind=8),pointer :: pa
    integer(kind=8),pointer :: pb
    data m1 /10/
    data pa /t1/
    data pb /m1/

    print *, pa
    print *, pb
  end subroutine sub
  
end module mod

program main
  use mod

  print *, p1
  call sub

end program
