integer, parameter :: N=10
complex(kind=8) a(N),b(N),c1,c2
data b/N*(1.0_8,1.0_8)/

do i=1,N
  a(i)=b(i)/4.0_8
end do
c1 = a(1)
c2 = a(N)

do i=1,N
  a(i)=b(i)/(4.0_8, 2.0_8)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(2.0_8, 4.0_8)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(-2.0_8, 4.0_8)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(-2.0_8, 1.0_8)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(2.0_8, -4.0_8)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(2.0_8, -1.0_8)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(-2.0_8, -4.0_8)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(-4.0_8, -2.0_8)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

if ((abs(real(c1)-real(c2))/abs(real(c1)) .lt. 1.0D-6) .or. &
    (abs(imag(c1)-imag(c2))/abs(imag(c1)) .lt. 1.0D-6)) then
  print *,"ok"
else
  print *,"ng",c1,c2
endif
end
