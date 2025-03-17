       call sub()
       call sub()
       stop
       end
 
       subroutine sub()
       real a,b,c,d,e
       common/sv/d,e
       save/sv/,a
       print *,a,d,e
       if( a.ge.1 ) then
	 return
       else
	 c=1
	 a=9;b=9;d=9;e=9;c=c+1
       endif
       print *,a,b,c,d,e
       end
 
       blockdata
       real a,b,c,d,e
       common/sv/a,b,c,d,e
       data d,e/123,456/
       data a/789/
       data b/12345/
       data c/0/
       end
