module moda
external  int
integer ::int
end
 module modf4
 use moda,only :zzz=>int
 end
 function int(i1)
 int=i1
 end function

 module z1
 contains
 function int(i1,i2,i3)
 int=1
 end function
 end

 module xx
 use z1,only:zzz=>int
end

 module xx1
 use xx,only:int=>zzz
 use modf4
contains
subroutine subb()
 i=int(1,2,3)
end subroutine
end

use xx,only:int=>zzz
use xx1
 i=zzz(1)
print *,'pass'
 end