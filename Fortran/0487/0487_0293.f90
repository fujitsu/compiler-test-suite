integer,allocatable:: a(:),b(:),c(:)
allocate(a,source=[1])
allocate(b(1),c(1),source=[1])
print *,'pass'
end
