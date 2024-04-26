integer :: x,y,ii,s

x=5
s=0
do ii=1,5
y= entryfun(x,ii)
s=s+y
end do
if ( s == 65 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
end

pure function fun(x,ii)
integer,intent(in)::x,ii
entry entryfun(x,ii)
fun=x*2+ii
end function
