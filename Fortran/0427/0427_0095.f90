module moda
namelist /int/ ii
data ii /1/
end
 module modf4
 use moda,only :zzz=>int
 end

 module z1
namelist /int/ iij
data iij /2/
 end

 module xx
 use z1,only:zzz=>int,int
end

 module xx1
 use xx,only:int=>zzz
 use modf4
contains
subroutine subb()
 read(6,int)
end subroutine
end

use xx1
use xx,only:int=>zzz,int
 if (1.eq.2) read(6,int)
 if (1.eq.2) read(6,zzz)
print *,'pass'
 end
