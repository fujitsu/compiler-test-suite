integer :: ii04_01, ii04_02, ii04_03
integer :: ii04_04, ii04_05, ii04_06

!$omp threadprivate(ii04_06)

namelist /nlist_01/ ii04_01, ii04_02, ii04_03
namelist /nlist_02/ ii04_04, ii04_05, ii04_06

!$omp threadprivate(ii04_01)



end
