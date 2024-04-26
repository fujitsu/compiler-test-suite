subroutine sub(b,c,x,y,xx)
real(8),dimension(10) :: b,c,x,y,xx
  do i = 1,10
    x(i)=b(i)*c(i)+y(i)
    xx(i)=b(i)*c(i)+y(i)
  enddo
end

program main
real(8),dimension(10) :: b,c,x,y,xx
b=2.0
c=3.0
x=4.0
xx=4.5
y=5.0
call sub(b,c,x,y,xx)
if (x(1) == 11.0 .and. x(2) == 11.0) then
  write (*,*) "OK"
else
  write (*,*) "NG"," 11.0=",x(1),"11.0=",x(2)
end if
end program

