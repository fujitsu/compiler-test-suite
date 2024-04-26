block
integer :: a(0:5,0:5),i,j
a=23
a(1,:) = 22

do i=1,5
 do j=1,5
  a(i,j) = a(i-1,j-1)
  a(i,j) = a(i,j) + a(i-1,j)
 end do
end do

print*,a(1,1)
end block
end
