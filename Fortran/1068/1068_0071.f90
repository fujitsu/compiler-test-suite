     module mod
       type :: base
          character(:),allocatable::name(:)
       end type base

       type, extends(base) :: ext
          integer(8)::d1
       end type ext
contains
     end module mod

     subroutine s1
     use mod
     type y
          integer(8)::d1
     class(base), allocatable :: var(:)
     end type
     type(y)::z(2)
     type (ext ) :: v(2)=ext(NULL(),1)
     n=2
     if (allocated(z(2)%var)) then
     z(n)%var=v
     end if
     if (allocated(z(2)%var))print *,9001
     end
     do n=1,10
      call s1
     end do
     print *,'sngg829q : pass'
     end 
