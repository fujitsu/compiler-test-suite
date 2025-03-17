       external func,iubr
       call sub(func,iubr)
       end
       subroutine sub(func,iubr)
       external func,iubr
       end
       function iubr()
       iubr = 1 
       end
       function func(data)
       func = 1 
       data = 2
       end

