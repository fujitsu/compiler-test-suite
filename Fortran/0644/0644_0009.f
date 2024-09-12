        subroutine sub(b,i)
        pointer(b,p)
        pointer(aa,ab)
	data aa/100/
	aa=b
        p=i
	ab=i+1
	print *,p,i
        return
        entry ent(b,i)
        p=p+i
        end
        program main
        q=1
        call sub(loc(q),10)
        call ent(loc(q),10)
        end
