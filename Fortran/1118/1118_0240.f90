block data
integer :: iii = 100
integer :: jjj = 200
common /com/ iii,jjj
!$omp threadprivate(/com/)
end block data
common /com/ iii,jjj
!$omp threadprivate(/com/)

!$omp task
  if ( iii .ne. 100 ) print *,'ng1'
  if ( jjj .ne. 200 ) print *,'ng2'
!$omp task
  if ( iii .ne. 100 ) print *,'ng3'
  if ( jjj .ne. 200 ) print *,'ng4'
!$omp end task
!$omp end task

print *,'ok'
end
