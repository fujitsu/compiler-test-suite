subroutine fptrans_c8toi1(a,b,x,n)
complex(4),dimension(1:n) :: a,b
complex(4) x
do i=1,n
  b(i) = a(i)-int(a(i)/cmplx(3.0_4,3.0_4),kind=1)*x
enddo
end subroutine

subroutine fptrans_c8toi2(a,b,x,n)
complex(4),dimension(1:n) :: a,b
complex(4) x
do i=1,n
  b(i) = a(i)-int(a(i)/cmplx(3.0_4,3.0_4),kind=2)*x
enddo
end subroutine

subroutine fptrans_c8toi4(a,b,x,n)
complex(4),dimension(1:n) :: a,b
complex(4) x
do i=1,n
  b(i) = a(i)-int(a(i)/cmplx(3.0_4,3.0_4),kind=4)*x
enddo
end subroutine

subroutine fptrans_c8toi8(a,b,x,n)
complex(4),dimension(1:n) :: a,b
complex(4) x
do i=1,n
  b(i) = a(i)-int(a(i)/cmplx(3.0_4,3.0_4),kind=8)*x
enddo
end subroutine

subroutine fptrans_c16toi1(a,b,x,n)
complex(8),dimension(1:n) :: a,b
complex(8) x
do i=1,n
  b(i) = a(i)-int(a(i)/cmplx(3.0_8,3.0_8),kind=1)*x
enddo
end subroutine

subroutine fptrans_c16toi2(a,b,x,n)
complex(8),dimension(1:n) :: a,b
complex(8) x
do i=1,n
  b(i) = a(i)-int(a(i)/cmplx(3.0_8,3.0_8),kind=2)*x
enddo
end subroutine

subroutine fptrans_c16toi4(a,b,x,n)
complex(8),dimension(1:n) :: a,b
complex(8) x
do i=1,n
  b(i) = a(i)-int(a(i)/cmplx(3.0_8,3.0_8),kind=4)*x
enddo
end subroutine

subroutine fptrans_c16toi8(a,b,x,n)
complex(8),dimension(1:n) :: a,b
complex(8) x
do i=1,n
  b(i) = a(i)-int(a(i)/cmplx(3.0_8,3.0_8),kind=8)*x
enddo
end subroutine

subroutine fptrans_c8()
integer,parameter :: n=100
complex(4),dimension(1:n) :: c8a,c8b
real(4),parameter :: zero=0.0_4, error=0.0_4
complex(4) c8x
c8a = (0._4,0._4)
c8x = (1._4,1._4)
call fptrans_c8toi1(c8a,c8b,c8x,n)
if (abs(imag(sum(c8b)) - zero) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(c8b) - zero
endif
call fptrans_c8toi2(c8a,c8b,c8x,n)
if (abs(imag(sum(c8b)) - zero) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(c8b) - zero
endif
call fptrans_c8toi4(c8a,c8b,c8x,n)
if (abs(imag(sum(c8b)) - zero) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(c8b) - zero
endif
call fptrans_c8toi8(c8a,c8b,c8x,n)
if (abs(imag(sum(c8b)) - zero) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(c8b) - zero
endif
end subroutine

subroutine fptrans_c16()
integer,parameter :: n=100
complex(8),dimension(1:n) :: c16a,c16b
real(8),parameter :: zero=0.0_8, error=0.0_8
complex(8) c16x
c16a = (0._8,0._8)
c16x = (1._8,1._8)
call fptrans_c16toi1(c16a,c16b,c16x,n)
if (abs(imag(sum(c16b)) - zero) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(c16b) - zero
endif
call fptrans_c16toi2(c16a,c16b,c16x,n)
if (abs(imag(sum(c16b)) - zero) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(c16b) - zero
endif
call fptrans_c16toi4(c16a,c16b,c16x,n)
if (abs(imag(sum(c16b)) - zero) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(c16b) - zero
endif
call fptrans_c16toi8(c16a,c16b,c16x,n)
if (abs(imag(sum(c16b)) - zero) .le. error) then
  print *,"ok"
else
  print *,"ng",sum(c16b) - zero
endif
end subroutine

program main
call fptrans_c8()
call fptrans_c16()
end program
