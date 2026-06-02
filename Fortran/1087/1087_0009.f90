integer :: jjj=1,kkk=1
associate(iaaa=>kkk)
associate(ia=>jjj)
block
integer :: arr(ia),jj
!$omp parallel do  shared(arr) private(jj) if (ia.ne.1)!default(none)
do ibbb=iaaa,1
if (size(arr).ne.1) print *,'ng1'
jj=ia
if (jj.ne.1) print *,'ng2'
end do
!$omp end parallel do
end block
block
integer :: arr(ia),jj
!$omp parallel do  shared(arr) private(jj) if (ia.ne.1)!default(none)
do ibbb=iaaa,1
if (size(arr).ne.1) print *,'ng1'
jj=ia
if (jj.ne.1) print *,'ng2'
end do
!$omp end parallel do
end block
block
integer :: brr(ia),jj
!$omp parallel do  shared(arr) private(jj) if (ia.ne.1)!default(none)
do ibbb=iaaa,1
if (size(brr).ne.1) print *,'ng1'
jj=ia
if (jj.ne.1) print *,'ng2'
end do
!$omp end parallel do
end block
end associate
end associate
print *,'pass'
end
