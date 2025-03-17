       intrinsic sin,cos
       a=ys(sin,1.570796327)
       b=yc(cos,1.570796327)
       stop
       end
 
       function ys(func,data)
       if( func(0.5).eq.sin(0.5) ) then
	 ys=func(data)
	 return
       else
	 ys=0.0
	 return
       endif
       end
 
       function yc(func,data)
       if( func(0.5).eq.cos(0.5) ) then
	 yc=func(data)
	 return
       else
	 yc=0.0
	 return
       endif
       end
