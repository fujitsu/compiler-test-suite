      module m
      integer,private:: i=0
      contains
       recursive subroutine s11()
       entry      s13()         
       if( i == 0 ) then
	i=1
        call x(s13)
       else
	print *,' OK '
       endif
       end subroutine s11
       recursive subroutine x(ext)
       call ext
       end subroutine
      end module m
      use m
      call s11
      end
