integer i1,i2
integer x,z
x=3
z=5
do i1=0,1,1
   x = x - z
   z = x
   do i2=10,0,-1
   enddo
   x = x - z
end do
print *,z
end
