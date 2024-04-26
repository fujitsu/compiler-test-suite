integer :: x,y
x=10
y=20
call sub(x,y)
if ( x==11 .and. y==75 ) then
  print *,'pass'
else
  print *,'ng'
end if
contains

subroutine sub(i,j)
integer :: i,j,s
s=0
do i=1,10
 s=s+i
end do
j=j+s
end subroutine
end
