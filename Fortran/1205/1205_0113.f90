     module mod
       type :: b
          integer::d1
          class(*),allocatable::n
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c
       end type
       character(*),parameter::cp=repeat('1',1000)
     end module mod

     subroutine s1
     use mod
     type  (b),allocatable :: v
     if (allocated(v)) then
     deallocate(v)
     end if
     end
use mod
      call s1
     print *,'sngg160r : pass'
     end
