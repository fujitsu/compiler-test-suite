!IMPLICIT NONE
integer :: i=1
         associate (isrc =>i)
         block
           real :: cSum(isrc)
            cSum = isrc
            cSum = cSum
if (isrc.ne.1) print *,'ngaaa'
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,101,cSum(1)
         end block
        end associate
print *,'pass'
end
