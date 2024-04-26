integer :: x,y,s
x=5
s=0
do ii=1,4
y= fun(x+ii) + fun2(x-ii)  + fun(fun2(x)+ii*2)
s=s+y
end do
if ( y == 56 .and. s == 200 ) then
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
fun2=x*2
end function
end
