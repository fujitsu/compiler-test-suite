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
  type x
     integer(8)::dt
     class(ext), allocatable :: var
   end type
     contains
  subroutine fext (d)
    type(ext)::d
write(94  ,*)"'fext'"
  end
    subroutine s1()
     type (x),allocatable::c
     allocate(c)
     allocate(ext::c%var)
     is=0
     deallocate(c%var,stat=is)
     if (is/=0) print *,10001
     end
     end
use mod
     call s1
     print *,'sngg942s : pass'
     end
