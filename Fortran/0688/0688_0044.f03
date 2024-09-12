call sss1
call sss2
print *,'pass'
contains
subroutine sss1
i=1
!$omp parallel firstprivate(i)
!$omp task final(i>0)
i=2
!$omp end task
if(i/=1) print *,'err'
!$omp task final(i>0)
i=3
!$omp end task
if(i/=1) print *,'err'
!$omp task final(i>0)
i=4
!$omp end task
if(i/=1) print *,'err'
!$omp end parallel
end subroutine
subroutine sss2
i=1
!$omp parallel num_threads(i)
!$omp parallel if(.true._1)
!$omp parallel firstprivate(i)
!$omp task if(i>0)
!$omp task final(i>0)
i=2
!$omp end task
!$omp end task
if(i/=1) print *,'err'
!$omp task final(i>0)
!$omp task if(i>0)
i=3
!$omp end task
!$omp end task
if(i/=1) print *,'err'
!$omp task if(i>0)
!$omp task final(i>0)
i=4
!$omp end task
!$omp end task
if(i/=1) print *,'err'
!$omp end parallel
!$omp end parallel
!$omp end parallel
end subroutine
end
