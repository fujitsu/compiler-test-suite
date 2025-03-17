       end

       subroutine sub(func,iubr)
       external func,iubr
       call iubr(func(10))
       end

       function iubr(aaa)
       iubr = 1 
       print *,aaa
       end

       function func(data)
       func = 1 
       print *,data
       data = 2
       end

