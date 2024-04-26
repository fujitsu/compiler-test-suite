
      character*1   ch 
      type tag
        character*100 ch
      end type 
      type (tag) ::t
      data ch/'a'/
      data (t%ch(i:i),i=50,59) /'q','r','s','t','u','v','w','x','y','z'/
      call in()

      contains
       subroutine in()
       character*32767 inch
       data inch(1:8),inch(32760:32767)/'abcdefgh','ijklmnop'/

       if (ch.ne.'a') then
         print *,'?? NG ??'
         stop 1
       endif
       if (t%ch(50:59).ne.'qrstuvwxyz') then
         print *,'?? NG ??'
         stop 2
       endif
       if (inch(1:8)        .ne.'abcdefgh' .or. 
     +     inch(32760:32767).ne.'ijklmnop') then
         print *,'?? NG ??'
         stop 3
       endif
       print *,'** OK **'
       end subroutine in
      end
