       character*10 ch
       stop
       end

       subroutine sub(ch)
       character*10 ch,c
       external ch
       c = ch()
       end
