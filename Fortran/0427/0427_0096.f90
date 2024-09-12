module moda
namelist /int/ ii
end
 module modf4
 use moda,only :zzz=>int
 end

 module z1
namelist /int/ iij
 end

 module xx
 use z1,only:zzz=>int
end

 module xx1
 use xx,only:int=>zzz
 use modf4
contains
subroutine subb()
 read(6,int)
end subroutine
end

use xx,only:int=>zzz
use xx1
 if (1.eq.2) read(6,int)
 if (1.eq.2) read(6,zzz)
print *,'pass'
 end
