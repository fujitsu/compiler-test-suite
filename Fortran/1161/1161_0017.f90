IMPLICIT NONE
         associate (isrc =>1)
         block
           real :: cSum(1)!isrc)
           character (len=isrc) :: aaa
            aaa='a'
            aaa=aaa
            cSum =1
            cSum = cSum
         end block
        end associate
print *,'pass'
end
