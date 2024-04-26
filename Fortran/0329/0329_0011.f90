integer :: x,y,ii,s
x=5
s=0
do ii=1,10
y= fun(x) + fun2(x) + fun(fun2(fun(x))) + fun3(x,ii)
s=s+y
end do
if ( s == 755 ) then
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

pure integer function fun3(x,i)
integer,intent(in)::x,i
fun3=fun2(x)+i
end function
end
