integer :: x,y,ii,s
x=5
s=0
do ii=1,10
call sub(x,y,ii)
s=s+y
end do
if ( s == 155 ) then
  print *,'pass'
else
  print *,'ng'
  print *,y,s
end if
contains
pure subroutine sub(x,y,ii)
integer,intent(in)::x,ii
integer,intent(out)::y
y=x*2+ii
end subroutine
end
