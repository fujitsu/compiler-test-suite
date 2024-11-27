type t
end type
class(t),allocatable::c1(:)
class(*),allocatable::c2(:)
type(t),allocatable::a1(:)

!$omp simd aligned(c1)
do i=1,1
end do
!$omp end simd 

!$omp simd aligned(c2)
do i=1,1
end do
!$omp end simd 

!$omp simd aligned(a1)
do i=1,1
end do
!$omp end simd 
end
