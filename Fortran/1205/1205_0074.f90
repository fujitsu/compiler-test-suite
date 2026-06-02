     module mod
       type :: b
          integer::d1
          class(b),allocatable::n
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
     subroutine s1
     class (b),allocatable :: v(:),u(:)

     if (allocated(v)) then
     deallocate(v)
     end if
     end
     end module mod
use mod
do n=1,20
      call s1
end do
     print *,'sngg113r : pass'
     end 
