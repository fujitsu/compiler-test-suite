! IMPLICIT NONE
integer :: i=1
        associate (isrc =>'aaaaa' )
          block
          integer ::ppp(len(isrc(i:5)))
          if (size(ppp) .ne.len(isrc(i:5)) ) print *,'ng :',size(ppp)
          end block
         end associate
         print *,'pass'
         end
