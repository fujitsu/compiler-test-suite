integer function s1() bind(c,name='ss1')
implicit none
 s1=10
end function
integer function s1() bind(c)
implicit none
  s1=20
end function
subroutine  sub1(dmy1) bind(c,name='zz1')
implicit none
 integer::dmy1
 dmy1=10
end 
subroutine  sub1(dmy1) bind(c)
implicit none
 integer::dmy1
  dmy1=20
end 
interface
   integer function s1() bind(c)
   implicit none
   end function
subroutine  sub1(dmy1) bind(c,name='zz1')
implicit none
 integer::dmy1
end 
end interface
integer::aa=0
if( s1() /= 20) print*,"101" 
call sub1(aa)
if( aa /= 10) print*,"201" 

block 
interface
 integer function s1() bind(c,name='ss1')
 end function
subroutine  sub1(dmy1) bind(c)
 integer::dmy1
end 
end interface
integer::aa=0

if( s1() /= 10) print*,"102" 
call sub1(aa)
if( aa /= 20) print*,"202" 
end block
if( s1() /= 20) print*,"103" 
call sub1(aa)
if( aa /= 10) print*,"203" 

print*,"PASS"

end

