IMPLICIT NONE
!         associate (isrc =>1)
integer :: isrc=1
!isrc=1
         block
!integer ::isrc
           real :: cSum(isrc)
            cSum =1
            cSum = cSum
         end block
!        end associate
print *,'pass'
end
