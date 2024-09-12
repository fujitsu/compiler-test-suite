module m1
implicit none
contains
integer function s1() 
implicit none
  s1=11
end function
end
module m2
implicit none
contains
integer function s1()
implicit none
  s1=12
end function
end

integer function s1() bind(c,name='ss1')
implicit none
  s1=1
end function
integer function s1() bind(c,name='ss2')
implicit none
  s1=2
end function

subroutine z1
use m1,t1=>s1
use m2,w1=>s1
implicit none
interface
  integer function s1() bind(c,name='ss1')
  implicit none
  end function
end interface
if (s1()/=1) print *,101
if (t1()/=11) print *,101
if (w1()/=12) print *,101
end
subroutine z2
use m1,t1=>s1
use m2,w1=>s1
implicit none
interface
  integer function s1() bind(c,name='ss2')
  implicit none
  end function
end interface
if (s1()/=2) print *,111
if (t1()/=11) print *,121
if (w1()/=12) print *,131
end
call z1
call z2
print *,'pass'
end
