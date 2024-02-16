       real a(100,101)
       real b(100,101)
       a=1
       b=2
       do 10 i=2,99
	 do 10 j=1,99
	   a(i,j+1)=a(i,j)*b(i-1,j+1)
20       continue
10     continue
       if(a(1,1).ne.1) then
	  print *,"***** NG1 *****"
       endif
       if(a(1,2).ne.1) then
	  print *,"***** NG2 *****"
       endif
       if(a(2,1).ne.1) then
	  print *,"***** NG3 *****"
       endif
       if(a(10,10).ne.512) then
	  print *,"***** NG4 *****"
       endif
       if(a(20,20).ne.524288) then
	  print *,"***** NG5 *****"
       endif
       print *,"***** OK *****"
       end
