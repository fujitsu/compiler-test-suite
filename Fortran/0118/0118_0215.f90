logical function equal_with_margin(a,b)
  real(8) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0D-15)
end function equal_with_margin

program main
integer,parameter :: n=10000
real(8),dimension(1:n) :: x1,x2,x3,y1,y2,y3
intrinsic dtan

call init_data(y1,n)
call init_data(y2,n)
call init_data(y3,n)

call compiler_inline_dtan(x1,y1,n)
call outline_dtan(x2,y2,n,dtan)
call hand_inline_dtan(x3,y3,n)

call check(x1,x2,y1,n)
call check(x1,x3,y1,n)
end program

subroutine init_data(x,n)
real(8),dimension(1:n) :: x
real(8) :: startv,endv,incv,v
startv = -1.0_8
endv = 1.0_8
incv = (endv - startv) / real(n, kind=8)
v = startv
do i=1,n
   x(i) = v
   v = v + incv
enddo
end subroutine

subroutine compiler_inline_dtan(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = dtan(b(i))
enddo
end subroutine

subroutine outline_dtan(a,b,n,func)
real(8),dimension(1:n) :: a,b
real(kind=8)::func
do i=1,n
  a(i) = func(b(i))
enddo
end subroutine

subroutine hand_inline_dtan(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = sin(b(i))/cos(b(i))
enddo
end subroutine

subroutine check(x1,x2,data,n)
real(8),dimension(1:n) :: x1,x2,data
logical :: equal_with_margin
do i=1,n
   if (equal_with_margin(x1(i),x2(i))) then
      print *,"ng: i=",i,", data=",data(i),", x1(i)=",x1(i),", x2(i)=",x2(i),", error=",abs(x1(i)-x2(i))
   endif
enddo
print *,"ok"
end subroutine
