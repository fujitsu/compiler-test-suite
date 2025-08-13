complex a,b
a=b(2_8,3_8)
print *,'pass'
end
subroutine b(i1,i2,i3,i4,i5,i6,i7,i8,i9)
implicit integer(8)(i)
ip1=loc(i1)
ip2=loc(i2)
k=8
write(k,'(1h ,z16.16,x,z16.16)')ip1,i1
write(k,'(1h ,z16.16,x,z16.16)')ip2,i2
end
