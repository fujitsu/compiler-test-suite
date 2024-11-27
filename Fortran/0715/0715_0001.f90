block data
  integer :: iii,jjj
  integer :: kkk,lll
  common/com1/iii,jjj
  common/com2/kkk,lll
  data iii,jjj/100,200/
  data kkk,lll/100,200/
!$omp threadprivate(/com1/)
  bind(c) /com1/
  bind(c) /com2/
!$omp threadprivate(/com2/)
end block data
print *,'pass'
end
