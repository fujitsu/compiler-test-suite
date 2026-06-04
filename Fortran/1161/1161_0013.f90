IMPLICIT NONE
integer :: isrc
isrc =1
isrc =isrc
         associate (isrc =>1)
         block
           real :: cSum(isrc)
            cSum =1
            cSum = cSum
         end block
        end associate
print *,'pass'
end
