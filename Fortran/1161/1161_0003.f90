!IMPLICIT NONE
!integer ::isrc 
!isrc = 0
!isrc = isrc
associate (isrc =>10)
 block
  real :: cSum(isrc)
  cSum(1)=1
  cSum(10)=10
  if (isrc.ne.10) print *,'ng1 : ',isrc
  if (size(cSum).ne.10) print *,'ng2 : ',size(cSum)
  if (cSum(1)/=1) print *,101,cSum(1)
  if (cSum(10)/=10) print *,102,cSum(10)
 end block
end associate
print *,'pass'
end
