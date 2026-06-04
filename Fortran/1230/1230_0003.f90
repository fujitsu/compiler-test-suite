     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=10000
contains
     end module mod

     subroutine s1
     use mod
block
     class(base), allocatable :: var
end block
     end
     do k=1,10
      call s1
     end do
     print *,'sngg476t : pass'
     end
