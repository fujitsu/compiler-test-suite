integer,allocatable:: arr(:,:,:,:)
allocate(arr(1,2,3,4))
if (size(arr(:,2,3,4)).ne.1  ) print *,'ng  '
if (size(arr(1,:,3,4)).ne.2  ) print *,'ng  '
if (size(arr(1,2,:,4)).ne.3  ) print *,'ng  '
if (size(arr(1,2,3,:)).ne.4  ) print *,'ng  '
print *,'pass'
end
