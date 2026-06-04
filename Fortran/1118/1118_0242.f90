block data
integer,pointer :: iii(:)
integer,pointer :: jjj(:)
common /com/iii,jjj
!$omp threadprivate(/com/)
end block data

integer,pointer :: iii(:)
integer,pointer :: jjj(:)
common /com/iii,jjj
integer,target :: ttt1(3) = 100
integer,target :: ttt2(3) = 200
!$omp threadprivate(/com/)

!$omp parallel 
  iii=>ttt1
  jjj=>ttt1
!$omp task
  if ( any(iii/=(/(100,i=1,3)/)))  print *,'ng1'
  if ( any(jjj/=(/(100,i=1,3)/)))  print *,'ng2'
!$omp task
  if ( any(iii/=(/(100,i=1,3)/)))  print *,'ng3'
  if ( any(jjj/=(/(100,i=1,3)/)))  print *,'ng4'
!$omp end task
!$omp taskwait
!$omp end task
!$omp taskwait
!$omp end parallel

print *,'ok'
end
