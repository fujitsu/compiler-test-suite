IMPLICIT NONE
         associate (isrc =>1)
         block
           real :: cSum(isrc)
            cSum =1
            cSum = cSum
         end block
        end associate
print *,'pass'
end
