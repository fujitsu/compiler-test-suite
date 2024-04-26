integer :: x,y,s,ii
x=5
s=0
do ii=1,4
y= fun(x+ii) + fun2(x-ii)
s=s+y
end do
if ( y == 20 .and. s == 80 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
contains
pure integer function fun(x)
integer,intent(in)::x
fun=x*2
end function

pure integer function fun2(x)
integer,intent(in)::x
fun2=fun(x)
end function
end
