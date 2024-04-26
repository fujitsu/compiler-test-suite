        interface
          subroutine sub(p)
          integer,pointer::p
          end subroutine
        end interface
        integer,target::t
        integer,pointer::p
        t=1
        p=>t
        call sub(p)
        call foo(p)
        p=>t
        call sub(p)
        print *,'pass'
        contains
          subroutine foo(i)
          if( i==1 ) print *,'ng'
          end subroutine
        end
	subroutine sub(p)
	integer*4,pointer::p
	p=2
	return
	end
