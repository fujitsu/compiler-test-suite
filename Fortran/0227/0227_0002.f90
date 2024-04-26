module mod1
  integer(kind=4) :: nspec = 0
!$omp threadprivate(nspec)
  contains
    subroutine sub2(cp,n)
    real cp(nspec)   
    k=nspec
    if (size(cp)/=n) print *,20001,size(cp), n
    if (size(cp)/=k) print *,20002,size(cp), k
    end subroutine sub2
end module mod1
use mod1
integer::omp_get_thread_num
    real x(10000)   
!$omp parallel
nspec= omp_get_thread_num()
call sub2(x,nspec)
!$omp end parallel
print *,'pass'
end

