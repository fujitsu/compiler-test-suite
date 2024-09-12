module moda
contains
 function intaaaa(i1)
entry int(i1)
 int=i1
 end function
end
 module modf4
 use moda,only :zzz=>int
 end

 module z1
 interface int
  module procedure intaaa
 end interface
 contains
 function intaa(i1,i2,i3)
 entry  intaaa(i1,i2,i3)
 intaaa=1
 end function
 end

 module xx
 use z1
end

 module xx1
 use xx
 use modf4
contains
subroutine subb()
 i=int(1,2,3)
end subroutine
end

use xx1
use xx
 i=int(1)
 i=int(1,2,3)
print *,'pass'
 end
