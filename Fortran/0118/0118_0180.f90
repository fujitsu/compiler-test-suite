program main
integer,parameter :: n=10000
complex(8),dimension(1:n) :: x1,x2,x3,y1,y2,y3,z1,z2,z3
intrinsic cdexp

call init_data(y1,n)
call init_data(y2,n)
call init_data(y3,n)
call init_data(z1,n)
call init_data(z2,n)
call init_data(z3,n)

call compiler_inline_cdexp(x1,y1,z1,n)
call outline_cdexp(x2,y2,z2,n,cdexp)
call hand_inline_cdexp(x3,y3,z3,n)

call check(x1,x2,y1,n)
call check(x1,x3,y1,n)
end program

subroutine init_data(x,n)
complex(8),dimension(1:n) :: x
real(8) :: startv,endv,incv,v
startv = -1.0_8
endv = 1.0_8
incv = (endv - startv) / real(n, kind=8)
v = startv
do i=1,n
   x(i) = cmplx(v, v-1.0_8)
   v = v + incv
enddo
end subroutine

subroutine compiler_inline_cdexp(a,b,c,n)
complex(8),dimension(1:n) :: a,b,c
do i=1,n
  a(i) = cdexp(b(i)+c(i))
enddo
end subroutine

subroutine outline_cdexp(a,b,c,n,func)
complex(8),dimension(1:n) :: a,b,c
complex(kind=8)::func
do i=1,n
  a(i) = func(b(i)+c(i))
enddo
end subroutine

subroutine hand_inline_cdexp(a,b,c,n)
complex(8),dimension(1:n) :: a,b,c
do i=1,n
  a(i) = cmplx(exp(real(b(i)+c(i)))*cos(imag(b(i)+c(i))), exp(real(b(i)+c(i)))*sin(imag(b(i)+c(i))))
enddo
end subroutine

subroutine check(x1,x2,data,n)
complex(8),dimension(1:n) :: x1,x2,data
real(8),parameter :: error_r=2.380902701659693E-07_8
real(8),parameter :: error_i=1.191183556237263E-07_8
do i=1,n
   if ((abs(real(x1(i))-real(x2(i))) .gt. error_r) .or. (abs(imag(x1(i))-imag(x2(i))) .gt. error_i)) then
      print *,"ng: i=",i,", data=",data(i),", x1(i)=",x1(i),", x2(i)=",x2(i),", error=(",abs(real(x1(i))-real(x2(i))),",",abs(imag(x1(i))-imag(x2(i))),")"
   endif
enddo
print *,"ok"
end subroutine
