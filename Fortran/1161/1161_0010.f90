IMPLICIT NONE
         associate (isrc =>1)
         block
           !real :: cSum(1)
if (1.eq.2)            print *, isrc
           ! cSum = cSum
         end block
        end associate
print *,'pass'
end
