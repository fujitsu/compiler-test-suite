     module mod
       type :: bx
          integer(8)::d3(3)
          character(:),allocatable::nn(:,:,:)
contains
           final::fbx
       end type
       type, extends(bx) :: ex
          character(:),allocatable::nname(:,:,:)
contains
           final::fex
       end type

       type :: b
          integer(8)::d2(2)
         class(bx), allocatable :: y(:,:,:)
contains
           final::fb
       end type
       type, extends(b) :: e
         class(bx), allocatable :: yy(:,:,:)
contains
           final::fe
       end type

       type :: base
         integer(8)::d1
         class(b), allocatable :: z(:,:,:)
contains
           final::fbase
       end type
       type, extends(base) :: ext
         class(b), allocatable :: zz(:,:,:)
contains
           final::fext
       end type
       integer,parameter::m=10000
  type x
     integer(8)::dt
     class(ext), allocatable :: var(:,:,:)
   end type
     contains
  subroutine fbx(d)
    type(bx)::d
print *,8001
  end
  subroutine fex(d)
    type(ex)::d
print *,8001
  end
  subroutine fb(d)
    type(b)::d
print *,8001
  end
  subroutine fe(d)
    type(e)::d
print *,8001
  end
  subroutine fbase(d)
    type(base)::d
write(114,*)"'fbase'"
  end
  subroutine fext (d)
    type(ext)::d(:,:,:)
write(114,*)"'fext'"
  end
    subroutine s1(c)
     class(x)::c
     allocate(ext::c%var(2,2,2))
     is=0
     deallocate(c%var,stat=is)
     if (is/=0) print *,10001
     end
     subroutine s0
     class(x),allocatable::c
     allocate(c)
     do k=1,10
      call s1(c)
     end do
     end
     end
use mod
     call s0
     !call chk(101)
call chk_final(114)
     print *,'sngg647q : pass'
     end
    subroutine chk_final(k)
     use mod
     character(m)::r
     rewind (k)
     do n=1,11
       read(k ,*    ,end=100) r
       if (r/='fext')print *,3001,trim(r)
do nn=1,8
    read(k ,*            ) r
       if (r/='fbase')print *,3002,trim(r)
     end do
     end do
print *,7891
  100 continue
     end
     subroutine  chk(k)
     character(16)::n1,n2
     rewind (k)
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=100) n2
       if (n1==n2) return
     end do
  100 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=200) n2
       if (n1==n2) return
     end do
  200 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=300) n2
       if (n1==n2) return
     end do
  300 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=400) n2
       if (n1==n2) return
     end do
  400 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=500) n2
       if (n1==n2) return
     end do
  500 print *,"Please check UNIT",k
     end
       


