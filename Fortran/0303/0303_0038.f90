real(4) x(10),y(10),z(10)
real(8) x8(10),y8(10),z8(10)

100 format(Z8)
101 format(Z16)

x = 1
y = 1

x(4) = -1.1
x(5) = 1.1
y(4) = 1e38
y(5) = 1e38

do i = 1,10
  z(i) = x(i) ** y(i)
enddo

write(*,100) z(4)
write(*,100) z(5)

x8 = 1
y8 = 1

x8(4) = -1.1_8
x8(5) = 1.1_8
y8(4) = 1e308_8
y8(5) = 1e308_8

do i = 1,10
  z8(i) = x8(i) ** y8(i)
enddo

write(*,101) z8(4)
write(*,101) z8(5)
end
