program main
  use mod
  integer :: sin = 1
  block
    intrinsic sin
    if ( sub(sin) > 1 ) print *,1
  end block
  if ( sub(sin) <= 1 ) print *,2
  print *,'pass'
end program main

module mod
  interface sub
     real function sub1(x)
       external x
     end function sub1
     real function sub2(x)
       integer x
     end function sub2
  end interface
end module mod

real function sub1(x)
  external x
  sub1 = x(1)
end function sub1

real function sub2(x)
  integer x
  sub2 = 100
end function sub2
