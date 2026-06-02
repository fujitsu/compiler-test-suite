integer,save,pointer :: iii(:)
integer,save,pointer :: jjj(:)
integer,target :: ttt1(3) = 100
!$omp threadprivate(iii,jjj)

!$omp parallel 
iii=>ttt1
jjj=>ttt1
!$omp task
  if ( any(iii/=(/(100,i=1,3)/))) print *,'ng1'
  if ( any(jjj/=(/(100,i=1,3)/))) print *,'ng2'
!$omp task
  if ( any(iii/=(/(100,i=1,3)/))) print *,'ng3'
  if ( any(jjj/=(/(100,i=1,3)/))) print *,'ng4'
!$omp end task
!$omp taskwait
!$omp end task
!$omp taskwait
  if ( any(iii/=(/(100,i=1,3)/))) print *,'ng5'
  if ( any(jjj/=(/(100,i=1,3)/))) print *,'ng6'
!$omp end parallel

print *,'ok'
end
