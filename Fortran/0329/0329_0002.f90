integer :: x,y,s
x=5
s=0
do ii=1,5
jj=ii+2
y= fun(x,jj)
s=s+y+ii
end do
if ( y == 17 .and. s == 90 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
contains
pure function fun(x,i)
integer,intent(in)::x,i
fun=x*2+i
end function
end
