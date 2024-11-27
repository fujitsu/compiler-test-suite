call test01()
print *,"pass"
end

subroutine test01()
type ty1
integer ,allocatable :: a1(:)
end type
type(ty1),allocatable :: arr1(:)
integer,allocatable  :: a1(:)
!$omp single
!$omp parallel private(a1) shared(arr1)
!$omp single
allocate(a1(1))
allocate(arr1(1))
!$omp parallel do lastprivate(a1,arr1)
do i=1,1
allocate(arr1(1)%a1(10))
a1=1
arr1(1)%a1(i)=2
end do
!$omp endparallel do
!$omp end single
!$omp endparallel
!$omp end single
end subroutine
