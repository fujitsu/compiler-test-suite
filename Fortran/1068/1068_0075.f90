     module mod
       type :: base
          character(:),allocatable::name
       end type base

       type, extends(base) :: ext
          integer(8)::d1
       end type ext
contains
     end module mod

     subroutine s1
     use mod
     class(*   ), allocatable :: var
     type (ext ) :: v=ext(NULL(),1)
     if (allocated(var)) then
     var=v
     end if
     end
     do n=1,10
      call s1
     end do
     print *,'sngg833q : pass'
     end
