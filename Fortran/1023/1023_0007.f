       character*10 c1
       character*20 c2
       c1="abcdefg"
       c2="hijklmno"
       aaa=1
       bbb=2
       ccc=3
       ddd=4
       eee=5
       fff=6
       ggg=7
       call sub(c1,aaa,bbb,ccc,ddd,eee,fff,c2)
       call ent1(c1,aaa,ccc,fff,c2)
       call ent2(c1,aaa,bbb,ccc,fff,c2)
       end
       subroutine sub(c1,aaa,bbb,ccc,ddd,eee,fff,c2)
       character*(*) c1,c2
       print *,c1,c2
       return
       entry ent1(c1,aaa,ccc,fff,c2)
       print *,c1,c2
       c1="aaa"
       c2="bbb"
       return
       entry ent2(c1,aaa,bbb,ccc,fff,c2)
       print *,c1,c2
       c1="ccc"
       c2="ddd"
       end
