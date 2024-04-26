integer::a,b,c
interface
subroutine s1(dmy) bind(c,name='ss1')
integer::dmy
end subroutine
end interface
common /s1/ a,b,c
a=10
b=20


call s1(c) 
if(c /= 30)print*,"101"
call sub()
print*,"PASS"
contains
 subroutine sub()
  integer::d,e,f
  common /s1/ d,e,f
  if(d .ne. 10  .and. e .ne. 20 .and. f .ne. 30) print*,"102"
 end subroutine
end 
 
subroutine s1(dmy) bind(c,name='ss1')
integer::dmy
dmy=30
end subroutine

