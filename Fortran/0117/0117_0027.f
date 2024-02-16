       real a(10,10,10), b(10,10,10) 
       n = 5
       do 185 k=1,n
       do 185 l=1,8
         a(k,l,1) = k
         b(k,l,1) = l
185    continue
       if(a(1,1,1).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(1,8,1).ne.1) then
	 print *,"***** NG *****"
       endif
       if(a(5,1,1).ne.5) then
	 print *,"***** NG *****"
       endif
       if(a(5,8,1).ne.5) then
	 print *,"***** NG *****"
       endif
       if(a(2,4,1).ne.2) then
	 print *,"***** NG *****"
       endif

       if(b(1,1,1).ne.1) then
	 print *,"***** NG *****"
       endif
       if(b(1,8,1).ne.8) then
	 print *,"***** NG *****"
       endif
       if(b(5,1,1).ne.1) then
	 print *,"***** NG *****"
       endif
       if(b(5,8,1).ne.8) then
	 print *,"***** NG *****"
       endif
       if(b(2,4,1).ne.4) then
	 print *,"***** NG *****"
       endif
       print *,"***** OK *****"
       end
