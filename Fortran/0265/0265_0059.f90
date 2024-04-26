integer::a,b,c
interface
integer function s1() bind(c,name='ss1')
end function
end interface

common /s1/ a,b,c
a=10
b=20
c=30
if(s1() /= 1)print*,"101"
call sub()
print*,"PASS"
contains
 subroutine sub()
  integer::d,e,f
  common /s1/ d,e,f
  if(d .ne. 10  .and. e .ne. 20 .and. f .ne. 30) print*,"102"
 end subroutine
end  
integer function s1() bind(c,name='ss1')
  s1=1
end function

