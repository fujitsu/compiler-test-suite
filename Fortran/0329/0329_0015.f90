integer :: x,y,ii,s,i
x=5
s=0
do ii=1,10
i=ii-1
y= fun(x,i) + fun2(x,i) + fun(fun2(x,i),i)
s=s+y+ii
end do
if ( y == 157 .and. s == 1040 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
contains
pure integer function fun2(x,i)
integer,intent(in)::x,i
fun2=fun(x,i)+i
end function
pure integer function fun(x,i)
integer,intent(in)::x,i
fun=x*2+i+i
end function

end
