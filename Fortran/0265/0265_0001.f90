interface
   integer function s1() bind(c,name='ss1')
   implicit none
   end function
end interface
call z1
print *,"PASS"

contains
subroutine z1
interface
   integer function s1() bind(c,name='ss2')
   end function
end interface
if (s1()/=2) print *,101
end subroutine

end 


integer function s1() bind(c,name='ss1')
  s1=1
end function
integer function s1() bind(c,name='ss2')
  s1=2
end function

