        subroutine sub(b,i)
        pointer(b,p)
        p=i
        print *,p
        return
        entry ent(b,i)
        print *,p
        p=p+i
        print *,p
        end
        program main
        q=1
        call sub(loc(q),10)
        call ent(loc(q),10)
        end
