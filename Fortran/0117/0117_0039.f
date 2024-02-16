       real a(10,10)
       a=1
       do 10 i=1,9
	 do 10 j=1,9
	   do 10 k=1,10
	   a(i,j)=a(i+1,j+1)
20       continue
10     continue
       if(a(1,1).ne.1) then
	  print *,"***** NG1 *****"
       endif
       if(a(10,1).ne.1) then
	  print *,"***** NG3 *****"
       endif
       print *,"***** OK *****"
       end
