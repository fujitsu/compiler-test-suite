         k=2
            associate (r=>k  )
                  block
         integer :: c(size([character(r):: '1234'(r:r)])) ! ok
                    if (size(c)/=1) print *,1001
                  end block
            end associate
         print *,'pass'
         end
