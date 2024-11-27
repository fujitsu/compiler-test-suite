integer :: ii04_01, ii04_02, ii04_03
integer :: ii04_04, ii04_05, ii04_06

namelist /nlist_01/ ii04_01, ii04_02, ii04_03

!$omp threadprivate(nlist_01)
!$omp threadprivate(ii04_01)
!$omp threadprivate(ii04_02)
!$omp threadprivate(ii04_03)

!$omp threadprivate(nlist_02)
!$omp threadprivate(ii04_04)
!$omp threadprivate(ii04_05)
!$omp threadprivate(ii04_06)

namelist /nlist_02/ ii04_04, ii04_05, ii04_06

end
