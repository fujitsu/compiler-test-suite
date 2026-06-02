 IMPLICIT NONE
        associate (isrc =>(/1_2,2_2/))
          block
          integer ::pp(size(isrc(:)))
          if (size(pp).ne.size(isrc))  print *,'ng :',pp
          end block
         end associate
         print *,'pass'
         end
