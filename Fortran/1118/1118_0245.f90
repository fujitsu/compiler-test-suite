character(3),allocatable :: cha1(:)
character(:),allocatable :: cha2(:)
character(3),target :: ttt1(3) = "aaa"
character(3),target :: ttt2(3) = "bbb"
!$omp threadprivate(cha1,cha2)

!$omp parallel
allocate(character(3)::cha1(3),cha2(3))
!$omp end parallel

cha1(1:3)=ttt1
cha2(1:3)=ttt1
!$omp parallel copyin(cha1,cha2)
!$omp task
  if ( any(cha1/=(/("aaa",i=1,3)/))) print *,'ng1'
  if ( any(cha2/=(/("aaa",i=1,3)/))) print *,'ng2'
!$omp task
  if ( any(cha1/=(/("aaa",i=1,3)/))) print *,'ng3'
  if ( any(cha2/=(/("aaa",i=1,3)/))) print *,'ng4'
!$omp end task
!$omp taskwait
!$omp end task
!$omp taskwait
!$omp end parallel

print *,'ok'
end
