subroutine s1
type x
character(:) ,allocatable::      m3(:)
complex(8),allocatable::      t3(:)
end type
type(x),save::v
!$omp threadprivate(v)
!$omp parallel
allocate(character(1)::v%m3(2))
allocate(v%t3(2))
v%m3='00000'
v%t3=0
!$omp end parallel
v%m3='3'
v%t3=(3,3)
!$omp parallel copyin (v)
if (any(v%m3/='3')) print *,1133
if (any(abs(v%t3-(3,3))>0.001)) print *,1133
!$omp end parallel
end subroutine
call s1
print *,'pass'
end


