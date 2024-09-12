type x
 character(2),allocatable::c(:,:,:)
end type
 type(x)::v
allocate(v%c(2,2,2))
v%c=reshape((/'( ','i4',' )','  ','  ','  ','  ','  '/),(/2,2,2/))
write(1,v%c) 2
v%c=reshape((/'( ','i4','  ','  ','  ','  ','  ',' )'/),(/2,2,2/))
write(1,v%c) 3
rewind 1
read(1,*) k
if (k/=2)print *,'error-1'
read(1,*) k
if (k/=3)print *,'error-2'
print *,'pass'
end
