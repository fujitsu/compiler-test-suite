elemental integer function fun1(a,b)
integer,intent(in):: a,b
fun1=a+b
end function

elemental subroutine sub1(a,b,c)
integer,intent(in)::a,b
integer,intent(out)::c
c=a+b
end subroutine

interface
 elemental integer function fun1(a,b)
 integer,intent(in):: a,b
 end function
 elemental subroutine sub1(a,b,c)
 integer,intent(in)::a,b
 integer,intent(out)::c
 end subroutine
end interface

integer::as,bs,cs,av(10),bv(10),cv(10)

as=-1;bs=-2;av=-1;bv=-2

cs=fun1(as,bs)
if(cs /= -3)print*,'ng1'

cv=fun1(av,bv)
do i=1,10
  if(cv(i) /= -3)print*,'ng2'
enddo

cv=fun1(as,bv)
do i=1,10
  if(cv(i) /= -3)print*,'ng3'
enddo

call sub1(as,bs,cs)
if(cs /= -3)print*,'ng4'

call sub1(av,bv,cv)
do i=1,10
  if(cv(i) /= -3)print*,'ng5'
enddo

call sub1(as,bv,cv)
do i=1,10
  if(cv(i) /= -3)print*,'ng6'
enddo

print*,'pass'
end
