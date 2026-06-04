         k=2
            associate (r=>k  )
                  block
         integer :: c(len ([character(2):: '1234'(1:r)])) ! ok
                    if (size(c)/=2) print *,1001
                  end block
            end associate
         print *,'sngg172p : pass'
         end

