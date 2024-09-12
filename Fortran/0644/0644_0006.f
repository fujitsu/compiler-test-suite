        subroutine sub(b,i)
        pointer(b,p)
        p=i
        return
        entry ent(b,i)
        p=p+i
        end
        program main
        q=1
        call sub(loc(q),10)
        call ent(loc(q),10)
        end
