program main
integer,parameter :: n=10000
complex(4),dimension(1:n) :: x1,x2,x3,y1,y2,y3
intrinsic cexp

call init_data(y1,n)
call init_data(y2,n)
call init_data(y3,n)

call compiler_inline_cexp(x1,y1,n)
call outline_cexp(x2,y2,n,cexp)
call hand_inline_cexp(x3,y3,n)

call check(x1,x2,y1,n)
call check(x1,x3,y1,n)
end program

subroutine init_data(x,n)
complex(4),dimension(1:n) :: x
real(4) :: startv,endv,incv,v
startv = -1.0_4
endv = 1.0_4
incv = (endv - startv) / real(n, kind=4)
v = startv
do i=1,n
   x(i) = cmplx(v, v-1.0_4)
   v = v + incv
enddo
end subroutine

subroutine compiler_inline_cexp(a,b,n)
complex(4),dimension(1:n) :: a,b
do i=1,n
  a(i) = cexp(b(i))
enddo
end subroutine

subroutine outline_cexp(a,b,n,func)
complex(4),dimension(1:n) :: a,b
complex(kind=4)::func
do i=1,n
  a(i) = func(b(i))
enddo
end subroutine

subroutine hand_inline_cexp(a,b,n)
complex(4),dimension(1:n) :: a,b
do i=1,n
  a(i) = cmplx(exp(real(b(i)))*cos(imag(b(i))), exp(real(b(i)))*sin(imag(b(i))))
enddo
end subroutine

subroutine check(x1,x2,data,n)
complex(4),dimension(1:n) :: x1,x2,data
real(4),parameter :: error_r=4.76837158E-07
real(4),parameter :: error_i=1.78813934E-07
do i=1,n
   if ((abs(real(x1(i))-real(x2(i))) .gt. error_r) .or. (abs(imag(x1(i))-imag(x2(i))) .gt. error_i)) then
      print *,"ng: i=",i,", data=",data(i),", x1(i)=",x1(i),", x2(i)=",x2(i),", error=(",abs(real(x1(i))-real(x2(i))),",",abs(imag(x1(i))-imag(x2(i))),")"
   endif
enddo
print *,"ok"
end subroutine
