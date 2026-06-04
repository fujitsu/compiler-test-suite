character(3),allocatable :: cha1
character(:),allocatable :: cha2
character(3) :: ttt1 = "aaa"
character(3) :: ttt2 = "bbb"

!$omp threadprivate(cha1,cha2)

!$omp parallel
allocate(character(3)::cha1,cha2)
cha1(1:3)=ttt1
cha2(1:3)=ttt1
!$omp end parallel

!$omp parallel copyin(cha1,cha2)
!$omp task
  if (cha1 .ne. "aaa") print *,'ng1'
  if (cha2 .ne. "aaa") print *,'ng2'
!$omp task
  if (cha1 .ne. "aaa") print *,'ng1'
  if (cha2 .ne. "aaa") print *,'ng2'
!$omp end task
!$omp taskwait
!$omp end task
!$omp taskwait
!$omp end parallel

print *,'ok'
end
