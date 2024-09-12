integer,pointer :: ptr1(:), ptr2(:,:),ptr3(:,:,:)
integer,allocatable :: alloc1(:), alloc2(:,:),alloc3(:,:,:)
integer::x1 = rank(ptr1)
integer::x2 = rank(ptr2)
integer::x3 = rank(ptr3)
integer::x4 = rank(alloc1)
integer::x5 = rank(alloc2)
integer::x6 = rank(alloc3)
if(x1 /= 1) print*, "101"
if(x2/= 2) print*, "102"
if(x3 /= 3) print*, "103"

if(x4 /= 1) print*, "104"
if(x5 /= 2) print*, "105"
if(x6 /= 3) print*, "106"

print*,"PASS"
end


