integer,allocatable :: arr1(:,:)
character,allocatable :: arr2(:,:)
complex,allocatable :: arr3(:,:)
allocate(arr1(10,10),arr2(10,10),arr3(10,10))
arr1 = 2
arr2 = 'A'
arr3 = (2,3)
call sub(arr1,arr2,arr3)
if(any(arr1 /= 2))print *, 101
if(any(arr2 /= 'A'))print *, 102
if(any(arr3 /= (2,3)))print *, 103
print *,"PASS"
contains
subroutine sub(dmy1,dmy2,dmy3)
integer,value,contiguous :: dmy1(:,:)
character,value,contiguous :: dmy2(:,:)
complex,value,contiguous :: dmy3(1:,1:)
dmy1 = 3
dmy2 = 'B'
dmy3 = (1,1)
end subroutine sub
end
