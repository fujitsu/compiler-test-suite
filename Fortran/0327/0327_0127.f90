module m
contains
subroutine sub(i,j)
integer :: i,j,s
s=0
do i=1,10
 s=s+i
end do
j=j+s
entry ent(i,j)
if (i==12) then
  j=-100
end if
end subroutine
end

use m
integer :: x,y
logical :: flag
x=10
y=20
flag=.true.
call sub(x,y)
if ( x .ne. 11 .or. y .ne. 75 ) then
  flag=.false.
end if
x=x+1
call ent(x,y)
if ( flag .and. x==12 .and. y==-100 ) then
  print *,'pass'
else
  print *,'ng',x,y,flag
end if
end
