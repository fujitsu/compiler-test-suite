module moda
!$omp threadprivate(int,/com/)
common /com/ jj
integer :: int
end
 module modf4
 use moda,only :zzz=>int
 end

 module z1
!$omp threadprivate(int,/com/)
common /com/ jj
integer :: int
 end

 module xx
 use z1,only:zzz=>int,int
end

 module xx1
 use xx,only:int=>zzz
 use modf4
contains
subroutine subb()
end subroutine
end

module modzz
use xx1
use xx,only:int=>zzz,int
end

use modzz
print *,'pass'
 end
