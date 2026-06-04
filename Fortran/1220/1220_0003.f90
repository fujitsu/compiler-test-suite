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
write(161 ,*) 101
  end
    subroutine s1(c)
     class(x)::c
     allocate(ext::c%var)
     is=0
     deallocate(c%var,stat=is)
     if (is/=0) print *,10001
     end
     subroutine s0
     class(x),allocatable::c
     allocate(c)
      call s1(c)
     end
     end
use mod
     call s0
rewind 161
     read(161,*) k
      if (k/=101) print *,292
     print *,'sngg939s : pass'
     end
