integer,allocatable,save :: iii 
integer,allocatable,save :: jjj
!$omp threadprivate(iii,jjj)

allocate(iii,jjj)
iii = 100
jjj = 200
!$omp task
  if ( iii .ne. 100 ) print *,'ng1'
  if ( jjj .ne. 200 ) print *,'ng2'
!$omp task
  if ( iii .ne. 100 ) print *,'ng3'
  if ( jjj .ne. 200 ) print *,'ng4'
!$omp end task
!$omp end task

if ( allocated(iii)) deallocate(iii)
if ( allocated(jjj)) deallocate(jjj)

!$omp parallel 
allocate(iii,jjj)
!$omp end parallel

iii = 100
jjj = 200
!$omp parallel copyin(iii,jjj)
!$omp barrier
!$omp task 
  if ( iii .ne. 100 ) print *,'ng5'
  if ( jjj .ne. 200 ) print *,'ng6'
!$omp task
  if ( iii .ne. 100 ) print *,'ng5'
  if ( jjj .ne. 200 ) print *,'ng6'
!$omp end task
!$omp taskwait
!$omp end task
!$omp taskwait
!$omp end parallel

print *,'ok'
end
