module m
  type st
     character(0) c1
     character(0) c2
     character(0) c3
     character(0) c4
     character(0) c5
     character(0) c6
     character(0) c7
     character(0) c8
     character(0) c9
     character(0) c10
     character(0) c11
     character(0) c12
     character(0) c13
     character(0) c14
     character(0) c15
     character(0) c16
     character(1) c17
  end type st
contains
  type(st) function foo()
    foo%c17 = "a"
  end function foo
end module m

program main
  use m
  type(st) a
  a = foo()
  print *, a%c17
end program main
