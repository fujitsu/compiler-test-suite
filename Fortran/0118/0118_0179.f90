program main
integer,parameter :: n=10000
complex(8),dimension(1:n) :: x1,x2,x3,y1,y2,y3
intrinsic cdexp

call init_data(y1,n)
call init_data(y2,n)
call init_data(y3,n)

call compiler_inline_cdexp(x1,y1,n)
call outline_cdexp(x2,y2,n,cdexp)
call hand_inline_cdexp(x3,y3,n)

call check(x1,x2,y1,n)
call check(x1,x3,y1,n)
end program

subroutine init_data(x,n)
complex(8),dimension(1:n) :: x
real(8) :: v

v=1.0
do i=1,n
   x(i) = cmplx(v, v-1.0_8)
   v = v - 0.1234
enddo
end subroutine

subroutine compiler_inline_cdexp(a,b,n)
complex(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = cdexp(b(i))
enddo
end subroutine

subroutine outline_cdexp(a,b,n,func)
complex(8),dimension(1:n) :: a,b
complex(kind=8)::func
do i=1,n
  a(i) = func(b(i))
enddo
end subroutine

subroutine hand_inline_cdexp(a,b,n)
complex(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = cmplx(exp(real(b(i)))*cos(imag(b(i))), exp(real(b(i)))*sin(imag(b(i))))
enddo
end subroutine

subroutine check(x1,x2,data,n)
complex(8),dimension(1:n) :: x1,x2,data
real(8),parameter :: error_r=1.0E-05_8
real(8),parameter :: error_i=1.0E-05_8
do i=1,n
   if ((abs(real(x1(i))-real(x2(i))) .gt. error_r) .or. (abs(imag(x1(i))-imag(x2(i))) .gt. error_i)) then
      print *,"ng: i=",i,", data=",data(i),", x1(i)=",x1(i),", x2(i)=",x2(i),", error=(",abs(real(x1(i))-real(x2(i))),",",abs(imag(x1(i))-imag(x2(i))),")"
   endif
enddo
print *,"ok"
end subroutine
