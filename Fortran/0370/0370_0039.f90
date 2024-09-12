module mod
  type tp0
     integer :: ary0(5) = 5
  end type tp0
end module mod

program test
  use mod
  implicit none
  interface
     function xyz (aa, bb)
       use mod
       implicit none
       type (tp0) aa, bb
       integer xyz
     end function xyz
  end interface

  type (tp0) t0, t1
  integer ans
  ans = xyz(t0,t1)
  print *,ans
end program test

function xyz (arg0, arg1)
  use mod
  implicit none
  type (tp0) arg0, arg1
  integer xyz
  
  xyz = arg0%ary0(5) + arg1%ary0(5)
end function xyz
