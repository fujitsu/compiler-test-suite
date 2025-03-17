       end
       subroutine sub(func,iubr)
       external func,iubr
       call iubr(func(10))
       end
       function iubr()
       iubr = 1 
       end
       function func(data)
       func = 1 
       data = 2
       end

