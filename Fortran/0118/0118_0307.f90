program main
integer,parameter :: n=10000
real(4),dimension(1:n) :: x1,x2,x3,y1,y2,y3
intrinsic tan

call init_data(y1,n)
call init_data(y2,n)
call init_data(y3,n)

call compiler_inline_tan(x1,y1,n)
call outline_tan(x2,y2,n,tan)
call hand_inline_tan(x3,y3,n)

call check(x1,x2,y1,n)
call check(x1,x3,y1,n)
end program

subroutine init_data(x,n)
real(4),dimension(1:n) :: x
real(4) :: startv,endv,incv,v
startv = -1.0_4
endv = 1.0_4
incv = (endv - startv) / real(n, kind=4)
v = startv
do i=1,n
   x(i) = v
   v = v + incv
enddo
end subroutine

subroutine compiler_inline_tan(a,b,n)
real(4),dimension(1:n) :: a,b
do i=1,n
  a(i) = tan(b(i))
enddo
end subroutine

subroutine outline_tan(a,b,n,func)
real(4),dimension(1:n) :: a,b
real(kind=4)::func
do i=1,n
  a(i) = func(b(i))
enddo
end subroutine

subroutine hand_inline_tan(a,b,n)
real(4),dimension(1:n) :: a,b
do i=1,n
  a(i) = sin(b(i))/cos(b(i))
enddo
end subroutine

logical function equal_with_margin(a,b)
  real(4) :: a,b
  equal_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-6)
end function equal_with_margin

subroutine check(x1,x2,data,n)
real(4),dimension(1:n) :: x1,x2,data
logical :: equal_with_margin
do i=1,n
   if (equal_with_margin(x1(i),x2(i))) then
      print *,"ng: i=",i,", data=",data(i),", x1(i)=",x1(i),", x2(i)=",x2(i)
   endif
enddo
print *,"ok"
end subroutine
