       character*50  commnt 
       call sub(commnt)
       end
       subroutine sub(commnt)
       character commnt*(*),wrtcmt*50
       wrtcmt=commnt(1:5)
       entry prtok()
       return
       end
