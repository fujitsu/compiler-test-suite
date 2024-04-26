block
real :: a(5),b(5),c(5)

a=23
a(2) = 2
a(3) = 3
a(4) = 4
a(5) = 5

b=3
b(2) = 12
b(3) = 13
b(4) = 14
b(5) = 15

do i=1,5
 c(i)=a(i)/b(i)+a(i)*b(i)/a(i)+a(i)/b(i)
end do

print*,c
end block
end
