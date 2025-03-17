       type st
 	character*5 ch
 	real a(2)
       end type
       type (st) fma, ffma, rc
       end
 
      function fma(ffma)
      external ffma
      type st
	character*5 ch
	real a(2)
      end type
      type (st) fma,ffma
      fma=ffma()
      end
