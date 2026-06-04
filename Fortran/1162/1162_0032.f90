integer,parameter :: isss(1)=3
                  associate (src =>isss(1))
                  block
                    real :: cSum(src)
                  end block
                 end associate
         print *,'sngg961n : pass'
end

