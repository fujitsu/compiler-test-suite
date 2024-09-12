real(8),allocatable:: a(:,:), b(:,:),c(:,:),d(:,:)
allocate(a(2,2),b(2,2))
a=1.0
b=1.0
c=1.0*matmul(a, b)
d=1.0*matmul(a, b)
if(any(c/=d)) print *,'err'
print *,'pass'
end
