real ,dimension(10) :: var
real ,dimension(20) :: array
pointer (ptr,var)
!$omp parallel reduction(+:ptr)
ptr = loc(array)
!$omp end parallel
!$omp parallel reduction(+:var)
ptr = loc(array)
!$omp end parallel
var(1) = 1.0
print *,array(1)
end
