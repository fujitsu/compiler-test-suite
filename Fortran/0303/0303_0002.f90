complex(16) function sub(a,b,d)
complex(16) a,b,c,d
c = a * b
c = c * d
sub = c
end function

program main
complex(16) sub
complex(16) a,b,c,d
real(8) x
real(8),parameter :: ans=0.0_8
real(8),parameter :: error=0.0_8
a = cmplx(2.0_8,2.0_8)
b = cmplx(3.0_8,3.0_8)
c = cmplx(4.0_8,4.0_8)
d = sub(a,b,c) 
x = real(d)+imag(d)
if (abs(x - ans) .le. error) then
  print *,"ok"
else
  print *,"ng", x, ans
endif
end program

