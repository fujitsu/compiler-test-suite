integer(8)::x(0:10,0:10,0:10),y(0:10,0:10,0:10),z(0:10,0:10,0:10)
do concurrent (i=0:10**1,j=0:10*1,k=0:(10)) 
x(i,j,k) = i
y(i,j,k) = j
z(i,j,k) = k
end do
print *,'pass'
end
