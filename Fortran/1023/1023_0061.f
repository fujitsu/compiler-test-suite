       character*10  chx,c,rc
       c=''
       rc=chx(c)
       end
       function chx(c)
       character*(*) chx,c,ent
       chx=c
       return
       entry ent(c)
       ent=c
       end
