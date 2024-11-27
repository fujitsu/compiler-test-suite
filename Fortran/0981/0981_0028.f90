call test01()
print *,"pass"
end

subroutine test01()
integer ,allocatable :: arr1(:)
integer ,allocatable :: arr2(:,:)
integer ,allocatable :: arr3(:,:,:)
integer ,allocatable :: arr4(:,:,:,:)
integer ,allocatable :: arr5(:,:,:,:,:)
integer ,allocatable :: arr6(:,:,:,:,:,:)
integer ,allocatable :: arr7(:,:,:,:,:,:,:)
integer ,allocatable :: arr8(:,:,:,:,:,:,:,:)
!$omp parallel private(arr1,arr2,arr3,arr4,arr5,arr6,arr7,arr8)
allocate(arr1(10),arr2(1,1),arr3(1,1,1),arr4(1,1,1,1),arr5(1,1,1,1,1))
allocate(arr6(1,1,1,1,1,1),arr7(1,1,1,1,1,1,1),arr8(1,1,1,1,1,1,1,1))
!$omp parallel private(arr1,arr2,arr3,arr4,arr5,arr6,arr7)
allocate(arr1(10),arr2(1,1),arr3(1,1,1),arr4(1,1,1,1),arr5(1,1,1,1,1))
allocate(arr6(1,1,1,1,1,1),arr7(1,1,1,1,1,1,1))
!$omp parallel private(arr1,arr2,arr3,arr4,arr5,arr6)
allocate(arr1(10),arr2(1,1),arr3(1,1,1),arr4(1,1,1,1),arr5(1,1,1,1,1))
allocate(arr6(1,1,1,1,1,1))
!$omp parallel private(arr1,arr2,arr3,arr4,arr5)
allocate(arr1(10),arr2(1,1),arr3(1,1,1),arr4(1,1,1,1),arr5(1,1,1,1,1))
!$omp parallel private(arr1,arr2,arr3,arr4)
allocate(arr1(10),arr2(1,1),arr3(1,1,1),arr4(1,1,1,1))
!$omp parallel private(arr1,arr2,arr3)
allocate(arr1(10),arr2(1,1),arr3(1,1,1))
!$omp parallel private(arr1,arr2)
allocate(arr1(10),arr2(1,1))
!$omp parallel private(arr1)
allocate(arr1(10))
!$omp parallel do 
do i=1,10
arr1(i)=i
end do
!$omp endparallel do
!$omp endparallel
!$omp endparallel
!$omp endparallel
!$omp endparallel
!$omp endparallel
!$omp endparallel
!$omp endparallel
!$omp endparallel
end subroutine
