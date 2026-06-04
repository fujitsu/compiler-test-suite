     module mod
       integer,parameter::m=1000
       type :: base
          integer(8)::d0(2)
       end type base

       type, extends(base) :: ext
          integer(8)::d1
          character(:),allocatable::name
       end type ext
      type y
         integer(8)::xd(4)
         class(*   ), allocatable :: var
       end type
contains
       subroutine ss(yv, value)
         class(base), intent(in) :: value
            type(y)::yv(:)
         do n=2,size(yv)
         yv(n)%var=value
         end do
         write (234,"(z16.16)") loc(yv(2)%var)
       end subroutine
     end

     subroutine s1
     use mod
        type(y)::yv(2)
     class(base), allocatable :: value
     n=2
     deallocate(yv(n)%var,stat=is)
     if (is==0) print *,7082
     !allocate(ext::yv%var)
         !write (235,"(z16.16)") loc(yv%var)
     k=0
!     select type(p=>yv(n)%var)
!       type is(ext)
!         k=1
!         allocate(character(m)::p%name)
!         write (233,"(z16.16)") loc(p%name)
!     end select
     if (k/=0) print *,60202
     allocate(value)
     call ss(yv, value)
     end
     do n=1,10
      call s1
     end do
     !call chk(233)
  !  call chk(234)
     !call chk(235)
     print *,'sngg847q : pass'
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
