integer :: x,s
s=0
x=5
do ii=1,10
s=s+ fun(x) + ii
end do
if ( s == 155 ) then
  print *,'pass'
else
  print *,'ng',s
end if
contains
pure function fun(x)
integer,intent(in)::x
fun=x*2
end function
end
