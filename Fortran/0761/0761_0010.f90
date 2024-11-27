 type t
 integer a
end type
class(t),pointer,save::zz
!$omp threadprivate(zz)
!$omp parallel copyin(zz)
!$omp end parallel
end
