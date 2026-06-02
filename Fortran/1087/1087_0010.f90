integer :: jjj=1
associate(ia=>jjj)
block
integer :: arr(ia),jj
block
! !$omp parallel shared(arr,ia) private(jj) 
!$omp parallel shared(arr,jjj) private(jj) if (ia.ne.1)!default(none)
if (size(arr).ne.1) print *,'ng'
jj=ia
if (jj.ne.1) print *,'ng'
!$omp end parallel
end block
associate(iia=>jjj)
block
integer :: arr(iia),jj
block
! !$omp parallel shared(arr,ia) private(jj) 
!$omp parallel shared(arr) private(jj) if (ia.ne.1)!default(none)
if (size(arr).ne.1) print *,'ng'
!$omp end parallel
end block
end block
end associate
end block
end associate
print *,'pass'
end
