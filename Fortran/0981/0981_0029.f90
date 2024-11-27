call test01()
print *,"pass"
end

subroutine test01()
type ty1
integer ,allocatable :: a1(:)
integer ,allocatable :: a2(:,:)
integer ,allocatable :: a3(:,:,:)
integer ,allocatable :: a4(:,:,:,:)
integer ,allocatable :: a5(:,:,:,:,:)
integer ,allocatable :: a6(:,:,:,:,:,:)
integer ,allocatable :: a7(:,:,:,:,:,:,:)
integer ,allocatable :: a8(:,:,:,:,:,:,:,:)
end type
type(ty1) :: arr1,arr2,arr3,arr4,arr5,arr6,arr7,arr8
!$omp parallel private(arr1,arr2,arr3,arr4,arr5,arr6,arr7,arr8)
allocate(arr1%a1(10),arr2%a2(1,1),arr3%a3(1,1,1),arr4%a4(1,1,1,1),arr5%a5(1,1,1,1,1))
!$omp parallel private(arr1,arr2,arr3,arr4,arr5,arr6,arr7)
!$omp parallel private(arr1,arr2,arr3,arr4,arr5,arr6)
!$omp parallel private(arr1,arr2,arr3,arr4,arr5)
!$omp parallel private(arr1,arr2,arr3,arr4)
!$omp parallel private(arr1,arr2,arr3)
!$omp parallel private(arr1,arr2)
!$omp parallel private(arr1)
!$omp parallel do 
do i=1,10
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
