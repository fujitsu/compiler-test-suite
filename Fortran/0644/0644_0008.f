        subroutine sub(b,i)
	real*8 p
        pointer(b,p)
        p=i
        return
        entry ent(b,i)
        p=p+i
        end
        program main
	real*8 q
        q=1
        call sub(loc(q),10)
        call ent(loc(q),10)
        end
