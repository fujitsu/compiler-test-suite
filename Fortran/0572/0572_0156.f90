integer,pointer :: ptr1(:), ptr2(:,:),ptr3(:,:,:)
integer,allocatable :: alloc1(:), alloc2(:,:),alloc3(:,:,:)
allocate(ptr1(10))
allocate(ptr2(10,10))
allocate(ptr3(10,10,10))
allocate(alloc1(10))
allocate(alloc2(10,10))
allocate(alloc3(10,10,10))

if(rank(ptr1) /= 1) print*, "101"
if(rank(ptr2) /= 2) print*, "102"
if(rank(ptr3) /= 3) print*, "103"

if(rank(alloc1) /= 1) print*, "104"
if(rank(alloc2) /= 2) print*, "105"
if(rank(alloc3) /= 3) print*, "106"

print*,"PASS"
end


