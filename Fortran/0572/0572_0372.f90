call sub(reshape([1,2,3,4],[2,2]))
          contains
          subroutine sub(xx)
          integer:: xx(..)
          if(rank(xx).ne.2)print*,"101"
          print*,"PASS"
          end subroutine
          end

