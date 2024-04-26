integer :: a(2,2),i
do i=-1,0
a = reshape((/fun(i),fun(i+1),fun(i+2),fun(i+3)/),(/2,2/))
end do
if ( sum(a) == 10 ) then
  print *,'pass'
else
  print *,'ng'
 print *,sum(a)
endif
contains
pure function fun(x)
integer,intent(in)::x
fun=x+1
end function
end
