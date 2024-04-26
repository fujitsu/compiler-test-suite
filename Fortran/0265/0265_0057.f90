integer::a,b,c
interface
subroutine s1(dmy) bind(c,name='ss1')
integer::dmy
end subroutine
end interface
common /s1/ a,b,c
BIND(c,name="ss2")::/s1/
a=10
b=20

call s1(c) 
if(c /= 30)print*,"101"
call sub()
call sub()
print*,"PASS"
contains
 subroutine sub()
  integer::d,e,f,cc
  common /s1/ d,e,f
  BIND(c,name="ss2")::/s1/
  SAVE::/s1/
  call s1(cc) 
  if(d .ne. 10  .and. e .ne. 20 .and. f .ne. 30) print*,"102",d,e,f
  if(cc /= 30)print*,"104"
 end subroutine
end 
 
subroutine s1(dmy) bind(c,name='ss1')
integer::dmy
integer::g,h,i
common /s1/ g,h,i
BIND(c,name="ss2")::/s1/
dmy=30
  if(g .ne. 10  .and. h .ne. 20 .and. i .ne. 30) print*,"103",g,h,i
end subroutine

