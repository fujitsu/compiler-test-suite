block data
  integer :: iii
  integer :: jjj
  common /com/ iii,jjj
  bind(c) /com/
  data iii,jjj/100,200/
end block data

integer :: iii
integer :: jjj
common /com/ iii,jjj
bind(c) /com/
!$omp parallel firstprivate(/com/)
  if (iii/=100)print *,'fail'
  if (jjj/=200)print *,'fail'
!$omp end parallel
print *,'pass'
end
