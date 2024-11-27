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
allocate(arr1(1))
!$omp parallel private(a1) firstprivate(arr1)
!$omp single
allocate(a1(1))
allocate(arr1(1)%a1(1))
!$omp parallel do lastprivate(a1)
do i=1,1
a1=1
end do
!$omp endparallel do
if (a1(1).ne.1) write(6,*) "NG"
!$omp end single
!$omp endparallel
!$omp end single
end subroutine
