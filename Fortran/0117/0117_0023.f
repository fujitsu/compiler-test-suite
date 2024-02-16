       real a(10,10,10)
       do 10 i=1,10
	 do 20 j=1,10
	   do 30 k=1,10
             a(i,j,k)=i
30         continue
20       continue
10     continue

       if(a(1,1,1).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(1,1,10).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(2,1,1).ne.2) then
	 print *,"***** NG *****"
       endif
       if(a(1,1,2).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(10,10,10).ne.10) then
	 print *,"***** NG *****"
       endif
       if(a(10,10,1).ne.10) then
	 print *,"***** NG *****"
       endif
       if(a(1,10,1).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(3,4,5).ne.3) then
	 print *,"***** NG *****"
       endif
       if(a(7,8,9).ne.7) then
	 print *,"***** NG *****"
       endif
       print *,"***** OK *****"
       end
