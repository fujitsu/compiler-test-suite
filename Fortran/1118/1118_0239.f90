integer,save,allocatable :: iii(:)
integer,save,allocatable :: jjj(:)
!$omp threadprivate(iii,jjj)

!$omp parallel
allocate(iii(3),jjj(3))
!$omp end parallel

iii=100
jjj=100
!$omp parallel copyin(iii,jjj)
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
  if ( any(iii/=(/(100,i=1,3)/))) print *,'ng3'
  if ( any(jjj/=(/(100,i=1,3)/))) print *,'ng4'
!$omp end parallel

print *,'ok'
end
