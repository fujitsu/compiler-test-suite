program main
  integer(kind=4) a
  call foo(a)
  print *, "OK"
end program main

subroutine foo(a)
  integer(kind=4) a
  call bar(a)
contains
  subroutine bar(a)
      integer(kind=4) a
      a = 100
  end subroutine bar
end subroutine foo
