
module mod
  integer(kind=8),target :: t1 = 5
  integer(kind=8),pointer :: p1 => t1
contains
  integer function func()
    integer(kind=8),target :: m1 = 10
    integer(kind=8),pointer :: pa => t1
    integer(kind=8),pointer :: pb => m1

    print *, pa
    print *, pb
    func = pa + pb
  end function func
  
end module mod

program main
  use mod
  integer ret
  print *, p1
  ret = func()
  print *, ret
end program
