integer function s1() bind(c,name='ss1')
implicit none
  s1=1
end function
integer function s1() bind(c,name='ss2')
implicit none
  s1=2
end function

subroutine z1
implicit none
interface
  integer function s1() bind(c,name='ss1')
  implicit none
  end function
end interface
if (s1()/=1) print *,101
end
subroutine z2
implicit none
interface
  integer function s1() bind(c,name='ss2')
  implicit none
  end function
end interface
if (s1()/=2) print *,102
end
call z1
call z2
print *,'sngg241e : pass'
end
