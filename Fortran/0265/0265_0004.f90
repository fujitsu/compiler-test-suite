integer function s1() bind(c,name='ss1')
implicit none
 s1=10
end function
integer function s1() bind(c)
implicit none
  s1=20
end function
interface
   integer function s1() bind(c)
   implicit none
   end function
end interface
if( s1() /= 20) print*,"101" 

associate(ss=>s1()+20)
if(ss /= 40)print*,"202"
end associate

call sub1()

print*,"PASS"
contains
subroutine sub1()
interface
 integer function s1() bind(c,name='ss1')
  implicit none
 end function
end interface

type ty
 integer::cmp1,cmp2
end type
type(ty)::obj
associate(ss=>s1()+20)
if(ss /= 30)print*,"302"
end associate
obj=ty(s1(),10+s1())
if(obj%cmp1 /= 10 .and. obj%cmp2 /= 20)print*,"201"

end
end

