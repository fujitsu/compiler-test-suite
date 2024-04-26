module mod1
  integer(kind=4) :: nspec = 0
!$omp threadprivate(nspec)
  contains
    subroutine sub2(cp,n)
    character(len=nspec) cp   
    k=nspec
    if (len(cp)/=n) print *,20001,len(cp), n
    if (len(cp)/=k) print *,20002,len(cp), k
    end subroutine sub2
end module mod1
use mod1
integer::omp_get_thread_num
    character(len=1000) x    
!$omp parallel
nspec= omp_get_thread_num()
call sub2(x,nspec)
!$omp end parallel
print *,'pass'
end

