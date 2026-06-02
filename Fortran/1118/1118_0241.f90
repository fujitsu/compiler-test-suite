block data
integer,pointer :: iii
integer,pointer :: jjj
common /com/iii,jjj
!$omp threadprivate(/com/)
end block data

integer,pointer :: iii
integer,pointer :: jjj
common /com/iii,jjj

integer,target :: ttt1 = 100
integer,target :: ttt2 = 200
!$omp threadprivate(/com/)

!$omp parallel 
  iii=>ttt1
  jjj=>ttt1
!$omp task
  if ( iii .ne. 100 ) print *,'ng1'
  if ( jjj .ne. 100 ) print *,'ng2'
!$omp task
  if ( iii .ne. 100 ) print *,'ng3'
  if ( jjj .ne. 100 ) print *,'ng4'
!$omp end task
!$omp taskwait
!$omp end task
!$omp taskwait
!$omp end parallel

print *,'ok'
end
