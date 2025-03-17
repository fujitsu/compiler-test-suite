       character*10 rc 
       character*5 ch5
       rc = ch5()
       end

       character*(*) function ch5()
       character*1 ent
       ch5 = 'aaaaa'
       print *,ch5
       return
       end
