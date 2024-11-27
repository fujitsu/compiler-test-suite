module mod
  procedure(ent01),pointer :: ppp
  procedure(ent02),pointer :: qqq
  private :: ent01,ent02
  contains
  function xfunc01() 
    xfunc01 = 1
    entry ent01() 
    ent01 = 10
  end function
  function xfunc02(arg1)
    integer :: arg1
    xfunc02 = arg1
    entry ent02(arg1)
    ent02 = arg1*2
  end function
end module

use mod
ppp=>xfunc01
qqq=>xfunc02
print *, ppp()
print *, qqq(100)
end
