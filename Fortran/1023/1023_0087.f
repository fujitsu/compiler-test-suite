       a=8
       b=a
       goto 10
       if( a.eq.b) then
	  call entry1(); call entry2(a)
       else
	  call entry2()
       endif
10     stop
       end

       subroutine sub()
       a=0
       b=a
	  entry entry2(param); entry entry1()
	  print *,b+param
       if( a.eq.b) then
	  param=b
       else
       endif
       return
       entry entry3()
       end
