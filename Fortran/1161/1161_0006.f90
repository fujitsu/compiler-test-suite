IMPLICIT NONE
         associate (isrc =>1)
         block
           real :: cSum(isrc)
            cSum =1
            cSum = cSum
if (size(cSum) .ne. 1) print *,'ng'
if (cSum(1)/=1) print *,101,cSum(1)
         end block
        end associate
print *,'pass'
end
