integer,allocatable:: arr(:,:,:,:)
allocate(arr(10,20,30,40))
arr=1
if(ubound(arr,1)/=40) print *,'err1'
if(ubound(arr,4)/=30) print *,'err2'

print *,'pass'
end
