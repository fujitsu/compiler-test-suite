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
allocate(arr6%a6(1,1,1,1,1,1),arr7%a7(1,1,1,1,1,1,1),arr8%a8(1,1,1,1,1,1,1,1))
!$omp parallel private(arr1,arr2,arr3,arr4,arr5,arr6,arr7)
if (.not.allocated(arr1%a1)) print *,1001
if (any(ubound(arr1%a1)/=10)) print *,1011
if (.not.allocated(arr2%a2)) print *,1002
if (any(ubound(arr2%a2)/=[1,1])) print *,1021
if (.not.allocated(arr3%a3)) print *,1003
if (any(ubound(arr3%a3)/=[1,1,1])) print *,1031
if (.not.allocated(arr4%a4)) print *,1004
if (any(ubound(arr4%a4)/=[1,1,1,1])) print *,1041
if (.not.allocated(arr5%a5)) print *,1005
if (any(ubound(arr5%a5)/=[1,1,1,1,1])) print *,1051
if (.not.allocated(arr6%a6)) print *,1006
if (any(ubound(arr6%a6)/=[1,1,1,1,1,1])) print *,1061
if (.not.allocated(arr7%a7)) print *,1007
if (any(ubound(arr7%a7)/=[1,1,1,1,1,1,1])) print *,1071
!$omp parallel private(arr1,arr2,arr3,arr4,arr5,arr6)
if (.not.allocated(arr1%a1)) print *,2001
if (any(ubound(arr1%a1)/=10)) print *,2011
if (.not.allocated(arr2%a2)) print *,2002
if (any(ubound(arr2%a2)/=[1,1])) print *,2021
if (.not.allocated(arr3%a3)) print *,2003
if (any(ubound(arr3%a3)/=[1,1,1])) print *,2031
if (.not.allocated(arr4%a4)) print *,2004
if (any(ubound(arr4%a4)/=[1,1,1,1])) print *,2041
if (.not.allocated(arr5%a5)) print *,2005
if (any(ubound(arr5%a5)/=[1,1,1,1,1])) print *,2051
if (.not.allocated(arr6%a6)) print *,2006
if (any(ubound(arr6%a6)/=[1,1,1,1,1,1])) print *,2061
if (.not.allocated(arr7%a7)) print *,2007
if (any(ubound(arr7%a7)/=[1,1,1,1,1,1,1])) print *,2071
!$omp parallel private(arr1,arr2,arr3,arr4,arr5)
if (.not.allocated(arr1%a1)) print *,3001
if (any(ubound(arr1%a1)/=10)) print *,3011
if (.not.allocated(arr2%a2)) print *,3002
if (any(ubound(arr2%a2)/=[1,1])) print *,3021
if (.not.allocated(arr3%a3)) print *,3003
if (any(ubound(arr3%a3)/=[1,1,1])) print *,3031
if (.not.allocated(arr4%a4)) print *,3004
if (any(ubound(arr4%a4)/=[1,1,1,1])) print *,3041
if (.not.allocated(arr5%a5)) print *,3005
if (any(ubound(arr5%a5)/=[1,1,1,1,1])) print *,3051
!$omp parallel private(arr1,arr2,arr3,arr4)
if (.not.allocated(arr1%a1)) print *,4001
if (any(ubound(arr1%a1)/=10)) print *,4011
if (.not.allocated(arr2%a2)) print *,4002
if (any(ubound(arr2%a2)/=[1,1])) print *,4021
if (.not.allocated(arr3%a3)) print *,4003
if (any(ubound(arr3%a3)/=[1,1,1])) print *,4031
if (.not.allocated(arr4%a4)) print *,4004
if (any(ubound(arr4%a4)/=[1,1,1,1])) print *,4041
!$omp parallel private(arr1,arr2,arr3)
if (.not.allocated(arr1%a1)) print *,5001
if (any(ubound(arr1%a1)/=10)) print *,5011
if (.not.allocated(arr2%a2)) print *,5002
if (any(ubound(arr2%a2)/=[1,1])) print *,5021
if (.not.allocated(arr3%a3)) print *,5003
if (any(ubound(arr3%a3)/=[1,1,1])) print *,5031
!$omp parallel private(arr1,arr2)
if (.not.allocated(arr1%a1)) print *,6001
if (any(ubound(arr1%a1)/=10)) print *,6011
if (.not.allocated(arr2%a2)) print *,6002
if (any(ubound(arr2%a2)/=[1,1])) print *,6021
!$omp parallel private(arr1)
if (.not.allocated(arr1%a1)) print *,7001
if (any(ubound(arr1%a1)/=10)) print *,7011
!$omp parallel do 
do i=1,10
arr1%a1(i)=i
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
