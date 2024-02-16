       real a(10,10)
       do 10 i=1,10
	 do 20 j=1,10
	   a(i,j)=i
20       continue
10     continue

       if(a(1,1).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(1,10).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(2,1).ne.2) then
	 print *,"***** NG *****"
       endif
       if(a(1,2).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(10,10).ne.10) then
	 print *,"***** NG *****"
       endif
       if(a(10,1).ne.10) then
	 print *,"***** NG *****"
       endif
       print *,"***** OK *****"
       end
