       subroutine sub(c1,name)
       character*(*) c1,name
        if (len(c1).ne.10) stop '1-1'
        if (len(name).ne.5) stop '1-1'
       return
       entry ent()
       end
       character*10 c1
       c1="0123456789"
       call sub(c1,"abcde")
       call ent()
       print *,'PASS'
       end
