       character*10 c1
       character*20 c2
       c1="abcdefg"
       c2="hijklmno"
       call sub(c1,"Test",c2)
       call ent(c1,c2)
       end
       subroutine sub(c1,name,c2)
       character*(*) c1,name,c2
       print *,c1,name,c2
       c1="aaa"
       c2="bbb"
       return
       entry ent(c1,c2)
       print *,c1,c2
       end
