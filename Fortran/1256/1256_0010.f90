 IMPLICIT NONE
        associate (isrc =>(/1_2,2_2/))
          block
          integer ::pp((isrc(2)))
          if (size(pp).ne.size(isrc))  print *,'ng :',pp
          end block
         end associate
         print *,'pass'
         end
