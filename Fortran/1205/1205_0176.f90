     module mod
       type :: b
          integer::d1
          class(*),allocatable::n(:)
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          integer::dd2(1000)
       end type
     end module mod

     subroutine s1
     use mod
     class (*),allocatable :: v(:),u(:)
 if (allocated(v)) then
     u=v
     !!!!deallocate(v)
 end if
     end
use mod
      call s1
     print *,'sngg223r : pass'
     end
