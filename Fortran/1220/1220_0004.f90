     module mod
       type :: b
          integer(8)::d2(2)
       end type

       type :: base
         integer(8)::d1
       end type
       type, extends(base) :: ext
         class(b), allocatable :: zz
contains
           final::fext
       end type
     contains
  subroutine fext (d)
    type(ext)::d
write(96  ,*)"'fext'"
  end
    subroutine s1()
     class(ext), allocatable :: var
     allocate(ext::var)
     is=0
     deallocate(var,stat=is)
     if (is/=0) print *,10001
     end
     end
use mod
     call s1
     print *,'sngg940s : pass'
     end
