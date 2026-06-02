integer :: jjj=1
associate(ia=>jjj,ib=>jjj)
block
integer,dimension(ia,ib) :: arr,brr,crr
integer,dimension(ia:1,ib:1) :: arr1,brr1,crr1
integer,dimension(1:ia,1:ib) :: arr2,brr2,crr2
integer :: jj
! !$omp parallel shared(arr,ia) private(jj)
!$omp parallel shared(arr) private(jj) if (ia.ne.1)!default(none)
if (size(arr).ne.1) print *,'ng1'
jj=ia
if (jj.ne.1) print *,'ng2'
jj=ib
if (jj.ne.1) print *,'ng3'
!$omp end parallel
end block
end associate
print *,'pass'
end
