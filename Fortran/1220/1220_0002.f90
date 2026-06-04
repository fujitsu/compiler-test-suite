     module mod
       type :: bx
          integer(8)::d3(3)
          character(:),allocatable::nn
contains
           final::fbx
       end type

       type :: b
          integer(8)::d2(2)
         class(bx), allocatable :: y
contains
           final::fb
       end type

       type :: base
         integer(8)::d1
         class(b), allocatable :: z
contains
           final::fbase
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
  subroutine fbx(d)
    type(bx)::d
print *,8001
  end
  subroutine fb(d)
    type(b)::d
print *,8001
  end
  subroutine fbase(d)
    type(base)::d
write(2  ,*)"'fbase'"
  end
  subroutine fext (d)
    type(ext)::d
write(2  ,*)"'fext'"
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
     call chk
     print *,'sngg938s : pass'
     end

    subroutine chk
     use mod
     character(100)::r
     rewind (2)
     k=2
     do n=1,1
       read(k ,*    ,end=100) r
       if (r/='fext')print *,3001,trim(r)
do nn=1,1
    read(k ,*            ) r
       if (r/='fbase')print *,3002,trim(r)
     end do
     end do
  100 continue
     end
