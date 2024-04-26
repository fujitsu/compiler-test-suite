module m1
contains
subroutine z1
interface
   integer function s1() bind(c,name='SS1')
   implicit none
   end function
end interface
if( s1() /= 1)print*,"101" 
end

subroutine z2
interface
   integer function s1() bind(c,name='SS2')
   implicit none
   end function
end interface
if( s1() /= 2)print*,"102" 
end
end module 


use m1
call z1
call z2
print *,'PASS'
end


integer function s1() bind(c,name='SS2')
implicit none
  s1=2
end function
integer function s1() bind(c,name='SS1')
implicit none
  s1=1
end function

