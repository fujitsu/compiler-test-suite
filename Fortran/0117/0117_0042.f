       real a(100,101)
       real b(100,101)
       a=1
       b=2
       do 10 i=1,99
	 do 10 j=1,99
	   a(i+1,j)=a(i,j+1)*b(i,j)
20       continue
10     continue
       if(a(1,1).ne.1) then
	  print *,a(1,1)
	  print *,"***** NG1 *****"
       endif
       print *,"***** OK *****"
       end
