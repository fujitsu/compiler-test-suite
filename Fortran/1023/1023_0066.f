       character*10 rc ,ccc
       character*10 ch
       ccc = 'abcdefg'
       rc=ch(ccc)
       end
       function ch(ccc)
       character*(*) ch,ccc,ent
       ch='a'
       ccc = 'bbbbb'
       print *,ch,ccc
       entry ent()
       end
