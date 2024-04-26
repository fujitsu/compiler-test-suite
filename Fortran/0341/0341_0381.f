       real a(101,101)
       real b(-1:101,101)
       a=1
       b=2
       do 10 i=1,100
	 do 10 j=1,100
	   a(i,j+1)=a(i,j)*b(i-1,j+1)
20       continue
10     continue
       if(a(1,1).ne.1) then
	  print *,"***** NG1 *****"
       endif
       if(a(1,2).ne.2) then
	  print *,"***** NG1 *****"
       endif
       if(a(2,1).ne.1) then
	  print *,"***** NG1 *****"
       endif
       if(a(10,10).ne.512) then
	  print *,"***** NG1 *****"
       endif
       if(a(20,20).ne.524288) then
	  print *,"***** NG1 *****"
       endif
       print *,"***** OK *****"
       end
