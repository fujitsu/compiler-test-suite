       real a(120,120), b(120,120) 

       m = 5
       n = 8
       do 10 i = 1,10
	 do 10 j = 1,n+2
	   a(i,j) = i
10     continue
       if(a(1,1).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(1,10).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(10,1).ne.10) then
	 print *,"***** NG *****"
       endif
       if(a(10,10).ne.10) then
	 print *,"***** NG *****"
       endif
       if(a(3,2).ne.3) then
	 print *,"***** NG *****"
       endif
       print *,"***** OK *****"
       end
