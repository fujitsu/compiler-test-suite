integer :: x,y,s
x=5
s=0
do i=1,4
call fun(x,y)
call fun2(x,y)
s=y+s
end do
if ( y == 10 .and. s == 40) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
contains
pure subroutine fun(x,y)
integer,intent(in)::x
integer,intent(out)::y
y=x*2
end subroutine 
pure subroutine fun2(x,y)
integer,intent(in)::x
integer,intent(out)::y
y=x*2
end subroutine

end
