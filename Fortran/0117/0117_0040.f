       real a(100,101)
       real b(100,101)
       a=1
       b=2
       do 10 i=1,100
	 do 10 j=1,100
	   a(i,j+1)=a(i,j)*b(i,j)
20       continue
10     continue
       if(a(1,1).ne.1) then
	  print *,a(1,1)
	  print *,"***** NG1 *****"
       endif
       if(a(1,2).ne.2) then
	  print *,"***** NG2 *****"
       endif
       if(a(100,1).ne.1) then
	  print *,"***** NG3 *****"
       endif
       if(a(100,2).ne.2) then
	  print *,"***** NG4 *****"
       endif
       print *,"***** OK *****"
       end
