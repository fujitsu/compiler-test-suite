            subroutine sub( aaa,bbb,ccc )
            character*(*) aaa,bbb,ccc
            ccc = merge(aaa,bbb,.true.)
            end
c
            character*30 c
	    call sub("Test is OK OK .","NG NG NG NG NG.",c)
	    print *,c
	    print *,"pass."
	    stop
	    end
