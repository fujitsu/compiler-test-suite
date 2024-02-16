program main
integer,parameter :: n=10000
real(4),dimension(1:n) :: x1,x2,x3,y1,y2,y3,z1,z2,z3
intrinsic tan

call init_data(y1,n)
call init_data(y2,n)
call init_data(y3,n)
call init_data(z1,n)
call init_data(z2,n)
call init_data(z3,n)

call compiler_inline_tan(x1,y1,z1,n)
call outline_tan(x2,y2,z2,n,tan)
call hand_inline_tan(x3,y3,z3,n)

call check(x1,x2,y1,n)
call check(x1,x3,y1,n)
end program

subroutine init_data(x,n)
real(4),dimension(1:n) :: x
real(4) :: startv,endv,incv,v
startv = -2.0_4
endv = 2.0_4
incv = (endv - startv) / real(n, kind=4)
v = startv
do i=1,n
   x(i) = v
   v = v + incv
enddo
end subroutine

subroutine compiler_inline_tan(a,b,c,n)
real(4),dimension(1:n) :: a,b,c
do i=1,n
  a(i) = tan(b(i)+c(i))
enddo
end subroutine

subroutine outline_tan(a,b,c,n,func)
real(4),dimension(1:n) :: a,b,c
real(kind=4)::func
do i=1,n
  a(i) = func(b(i)+c(i))
enddo
end subroutine

subroutine hand_inline_tan(a,b,c,n)
real(4),dimension(1:n) :: a,b,c
do i=1,n
  a(i) = sin(b(i)+c(i))/cos(b(i)+c(i))
enddo
end subroutine

subroutine check(x1,x2,data,n)
real(4),dimension(1:n) :: x1,x2,data
real(4),parameter :: error=1.83105469E-04
do i=1,n
   if (abs(x1(i)-x2(i)) .gt. error) then
      print *,"ng: i=",i,", data=",data(i),", x1(i)=",x1(i),", x2(i)=",x2(i),", error=",abs(x1(i)-x2(i))
   endif
enddo
print *,"ok"
end subroutine
