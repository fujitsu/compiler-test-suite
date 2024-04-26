       real a(120,120), b(120,120) 
       b=0
       do 10 j = 1,10
	 do 10 i = j,31-j
	   a(j,i) = b(j,i)
10     continue
       if(a(1,1).ne.b(1,1)) then
	 print *,"***** NG *****"
       endif
       if(a(1,30).ne.b(1,30)) then
	 print *,"***** NG *****"
       endif
       if(a(10,21).ne.b(10,21)) then
	 print *,"***** NG *****"
       endif
       print *,"***** OK *****"
       end
