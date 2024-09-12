integer,allocatable:: arr(:,:,:,:)
allocate(arr(101,102,103,4))
if (size(arr(:,2,3,4)).ne.101) print *,'ng  '
if (size(arr(1,:,3,4)).ne.102) print *,'ng  '
if (size(arr(1,2,:,4)).ne.103) print *,'ng  '
if (size(arr(1,2,3,:)).ne.4  ) print *,'ng  '
print *,'pass'
end
