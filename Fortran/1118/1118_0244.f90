character(3),pointer :: cha1(:)
character(:),pointer :: cha2(:)
character(3),target :: ttt1(3) = "aaa"
character(3),target :: ttt2(3) = "bbb"
!$omp threadprivate(cha1,cha2)

cha1=>ttt1
cha2=>ttt1

!$omp task
  if ( any(cha1/=(/("aaa",i=1,3)/))) print *,'ng1'
  if ( any(cha2/=(/("aaa",i=1,3)/))) print *,'ng2'
!$omp task
  if ( any(cha1/=(/("aaa",i=1,3)/))) print *,'ng3'
  if ( any(cha2/=(/("aaa",i=1,3)/))) print *,'ng4'
!$omp end task
!$omp end task

print *,'ok'

end
