 IMPLICIT NONE
        associate (isrc =>(/'aa','bb'/))
          block
          integer ::pp(len(isrc(2)(1:2)))
          if (size(pp).ne.size(isrc))  print *,'ng :',size(pp),len(isrc(2))
          end block
         end associate
         print *,'pass'
         end
