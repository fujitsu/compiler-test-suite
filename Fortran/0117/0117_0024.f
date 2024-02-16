       real a(10,10,10,10)
       do 10 i=1,10
	 do 20 j=1,10
	   do 30 k=1,10
	     do 40 l=1,10
               a(i,j,k,l)=l
40           continue
30         continue
20       continue
10     continue

       if(a(1,1,1,1).ne.1.or.a(1,1,1,10).ne.10) then
	 go to 60
       endif
       if(a(2,1,1,2).ne.2.or.a(1,1,2,2).ne.2) then
	 go to 60
       endif
       if(a(10,10,10,10).ne.10.or.a(10,10,10,1).ne.1) then
	 go to 60
       endif
       if(a(1,10,10,1).ne.1.or.a(3,4,5,6).ne.6.or.a(6,7,8,9).ne.9) then
	 go to 60
       endif
       print *,"***** OK *****"
       stop
60     print *,"***** NG *****"
       end
