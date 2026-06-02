integer,parameter :: isss(1)=3
real x(isss(1))
if (size(x)/=3) print*,1001
                  associate (src =>isss(1))
                  block
                    real :: cSum(src)
                  end block
                 end associate
         print *,'sngg962n : pass'
end

