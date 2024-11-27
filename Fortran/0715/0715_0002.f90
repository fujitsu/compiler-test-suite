block data
  integer :: iii,jjj
  common/com/iii,jjj
  data iii,jjj/100,200/
!$omp threadprivate(/com/)
  bind(c) /com/
end block data

integer :: iii,jjj
common/com/iii,jjj
bind(c) /com/
!$omp threadprivate(/com/)

iii = 300
jjj = 400

print *,'pass'
end
