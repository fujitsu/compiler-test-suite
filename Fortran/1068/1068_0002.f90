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
     class(base), allocatable :: var
     if (allocated(var)) then
     end if
     end
      call s1
     print *,'sngg760q : pass'
     end 
