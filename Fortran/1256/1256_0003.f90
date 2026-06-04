 IMPLICIT NONE
integer(kind=2) :: arr(2)
        associate (isrc =>(/1_2,2_2/))
          block
          integer ::pp(size(+(isrc(1:2))))
          !integer ::pp2(size(isrc(1:2)))
          if (size(pp).ne.size(isrc))  print *,'ng :',pp
          end block
         end associate
         print *,'pass'
         end
