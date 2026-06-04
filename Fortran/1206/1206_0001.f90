     module mod
       type :: b
          integer::d1
          class(b),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
       end type
 contains

     subroutine s1(k)
type w
     integer(8)::d1
     class (b),allocatable :: v(:),u(:)
end type
type(w)::z(k)
mm=2
if (mm==1) then
     z(mm)%u=z(mm)%v
end if
end
end
use mod
      call s1(2)
     print *,'sngg270r : pass'
     end 
