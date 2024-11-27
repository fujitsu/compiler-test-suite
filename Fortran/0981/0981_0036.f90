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
!$omp parallel do
do i=1,1
end do
!$omp endparallel do
!$omp endparallel
!$omp end single
end subroutine
