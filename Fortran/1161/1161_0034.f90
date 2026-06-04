 associate (isrc =>1)               ! 2), 5)
    block                                    ! 3)
        real :: cSum(isrc)             ! 4), 5) 
        if (size(cSum).ne.1) print *,'ng'
    end block
 end associate
print *,'pass'
 end
