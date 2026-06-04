!IMPLICIT NONE
integer :: i=1
integer :: isrc=2
         associate (isrc =>i)
         block
           real :: cSum(isrc)
            cSum = isrc
if (isrc.ne.1) print *,'ng1'
if (cSum(1).ne.1) print *,'ng2'
if (size(cSum).ne.1) print *,'ng',size(cSum)
if (cSum(1)/=1) print *,101,cSum(1)
         end block
        end associate
print *,'pass'
end
