       real a(10,10)
       real b(10,10)
       real c(10,10)
       a=1
       b=1
       c=b
       do 10 i=1,10
	 do 10 j=1,10
	   do 10 k=1,10
	     c(i,j)=c(i,j)+a(i,k)*b(k,j)
20       continue
10     continue
       if(a(1,1).ne.1) then
	  print *,a(1,1)
	  print *,"***** NG1 *****"
       endif
       if(a(1,2).ne.1) then
	  print *,"***** NG2 *****"
       endif
       print *,"***** OK *****"
       end
