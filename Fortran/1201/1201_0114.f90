     module mod
       type :: bx
          integer(8)::d3(3)
          character(:),allocatable::nn(:,:,:)
       end type
       type, extends(bx) :: ex
          character(:),allocatable::nname(:,:,:)
       end type

       type :: b
          integer(8)::d2(2)
         class(* ), allocatable :: y(:,:,:)
       end type
       type, extends(b) :: e
         class(* ), allocatable :: yy(:,:,:)
       end type

       type :: base
         integer(8)::d1
         class(*), allocatable :: z(:,:,:)
       end type
       type, extends(base) :: ext
         class(*), allocatable :: zz(:,:,:)
       end type
       integer,parameter::m=10000
  type x
     integer(8)::dt
     class(*  ), allocatable :: var
   end type
     contains
    subroutine s1(c)
     class(*)::c
     is=0
  select type(c)
     type is(x)
     deallocate(c%var,stat=is)
    end select
     if (is==0) print *,10001
     end
     subroutine s0
     class(*),allocatable::c
     allocate(x::c)
     do k=1,10
      call s1(c)
     end do
     end
     end
use mod
     call s0
!     call chk(11)
!     call chk(12)
!     call chk(13)
     print *,'sngg630q : pass'
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
       


