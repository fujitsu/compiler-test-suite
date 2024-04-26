        interface
          subroutine sub(p)
          integer,pointer::p
          end subroutine
        end interface
        integer,target ::t
        integer,pointer::p
        t=1
        p=>t
        call sub(p)
        if( t==1 ) print *,'ng'
        p=>t
        call sub(p)
        if( t==4 ) print *,'ng'
        print *,'pass'
        end
	subroutine sub(p)
	integer*4,pointer::p
	p=p+2
	return
	end
