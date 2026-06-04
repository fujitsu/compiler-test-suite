         k=2
            associate (r=>k  )
                  block
         integer :: c(size([ '1234'(1:r)])) 
                    if (size(c)/=1) print *,1001
                  end block
            end associate
         print *,'sngg170p : pass'
         end

