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
type g
  integer(8)::d1
     type  (b),allocatable :: v
end type
type(g)::h(2)
mm=2
     if (allocated(h(mm)%v)) then
     deallocate(h(mm)%v)
     end if
     end
use mod
      call s1
     print *,'sngg191r : pass'
     end
