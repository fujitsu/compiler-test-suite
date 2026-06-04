integer :: iii = 100
integer :: jjj = 200
!$omp threadprivate(iii,jjj)

!$omp task
  if ( iii .ne. 100 ) print *,'ng1'
  if ( jjj .ne. 200 ) print *,'ng2'
!$omp task
  if ( iii .ne. 100 ) print *,'ng3'
  if ( jjj .ne. 200 ) print *,'ng4'
!$omp end task
!$omp end task

!$omp parallel copyin(iii,jjj) default(private)
!$omp task default(private)
  if ( iii .ne. 100 ) print *,'ng5'
  if ( jjj .ne. 200 ) print *,'ng6'
!$omp task default(private)
  if ( iii .ne. 100 ) print *,'ng7'
  if ( jjj .ne. 200 ) print *,'ng8'
!$omp end task
!$omp end task
!$omp end parallel

print *,'ok'
end
