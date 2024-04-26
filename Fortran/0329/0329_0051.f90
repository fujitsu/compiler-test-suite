integer :: x,y,s,ii
x=5
s=0
do ii=1,4
x=ii
y= fun(x+ii) + fun2(x-ii) +1 +ii
y= fun(x) + fun2(x-ii-ii+2) + fun(fun2(fun(x+ii))+ii)
s=s+y
end do
if ( y == 76 .and. s == 196 ) then
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
