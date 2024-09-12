integer, parameter :: N=10
complex(kind=16) a(N),b(N),c1,c2
data b/N*(1.0_16,1.0_16)/

do i=1,N
  a(i)=b(i)/4.0_16
end do
c1 = a(1)
c2 = a(N)

do i=1,N
  a(i)=b(i)/(4.0_16, 2.0_16)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(2.0_16, 4.0_16)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(-2.0_16, 4.0_16)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(-2.0_16, 1.0_16)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(2.0_16, -4.0_16)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(2.0_16, -1.0_16)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(-2.0_16, -4.0_16)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

do i=1,N
  a(i)=b(i)/(-4.0_16, -2.0_16)
end do
c1 = c1 + a(1)
c2 = c2 + a(N)

if (c1 == c2) then
  print *,"ok"
else
  print *,"ng",c1,c2
endif
end
