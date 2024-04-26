complex(8) function sub(a,b,d)
complex(8) a,b,c,d
c = a * b
c = c * d
sub = c
end function

program main
complex(8) sub
complex(8) a,b,c,d
real(4) x
real(4),parameter :: ans=0.0_4
real(4),parameter :: error=0.0_4
a = cmplx(2.0_4,2.0_4)
b = cmplx(3.0_4,3.0_4)
c = cmplx(4.0_4,4.0_4)
d = sub(a,b,c) 
x = real(d)+imag(d)
if (abs(x - ans) .le. error) then
  print *,"ok"
else
  print *,"ng", x, ans
endif
end program

