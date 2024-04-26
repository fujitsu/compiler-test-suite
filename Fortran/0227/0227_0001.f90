module mod1
  integer(kind=4) :: nspec = 0
!$omp threadprivate(nspec)
  contains
    subroutine sub2()
    real cp(nspec)   
    k=nspec
    if (size(cp)/=nspec) print *,20001
    end subroutine sub2
end module mod1
use mod1
integer::omp_get_thread_num
!$omp parallel
nspec= omp_get_thread_num()
call sub2
!$omp end parallel
print *,'pass'
end

