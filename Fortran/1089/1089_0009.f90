integer::r
         r=2
                  block
         integer :: c(size([character(2):: '1234'(1:r)])) ! ok
                    if (size(c)/=1) print *,1001,size(c)
                  end block
         print *,'sngg169p : pass'
         end

