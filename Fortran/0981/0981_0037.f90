call test01()
print *,"pass"
end

subroutine test01()
type ty1
integer ,allocatable :: a1(:)
end type
type(ty1) :: arr1(1)
integer,allocatable  :: a1(:)
!$omp single
!$omp parallel private(arr1,a1)
allocate(a1(1))
allocate(arr1(1)%a1(1))
!$omp parallel do lastprivate(a1) shared(arr1)
do i=1,1
a1=2
arr1(1)%a1(i)=2
end do
!$omp endparallel do
if (a1(1).ne.2) write(6,*) "NG"
!$omp endparallel
!$omp end single
end subroutine
