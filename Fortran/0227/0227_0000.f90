module mod1
  integer(kind=4) :: nspec = 0
!$omp threadprivate(nspec)
!$omp threadprivate(n)
  contains
    subroutine sub1()
     nspec = 50
    end subroutine sub1
    subroutine sub2()
    real cp(nspec)   
    if (size(cp)/=n) print *,20001
    cp=0
    do i=1,nspec
       cp(i) = 1.0
    enddo
    end subroutine sub2
end module mod1
use mod1
integer::omp_get_thread_num
!$omp parallel
select case (omp_get_thread_num())
 case (0)
   nspec=1
   n=1
 case (1)
   nspec=2
   n=2
 case (2)
   nspec=3
   n=3
 case (3)
   nspec=4
   n=4
end select
call sub2
!$omp end parallel
print *,'pass'
end

