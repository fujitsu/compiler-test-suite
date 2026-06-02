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
            type(y)::yv
         yv%var=value
         write (225,"(z16.16)") loc(yv%var)
       end subroutine
     end module mod

     subroutine s1
     use mod
        type(y)::yv
     class(base), allocatable :: value
     deallocate(yv%var,stat=is)
     if (is==0) print *,7082
     !allocate(ext::yv%var)
         !write (226,"(z16.16)") loc(yv%var)
     k=0
!     select type(p=>yv%var)
!       type is(ext)
!         k=1
!         allocate(character(m)::p%name)
!         write (224,"(z16.16)") loc(p%name)
!     end select
     if (k/=0) print *,60202
     allocate(value)
     call ss(yv, value)
     end
     do n=1,10
      call s1
     end do
     !call chk(224)
 !   call chk(225)
     !call chk(226)
     print *,'sngg844q : pass'
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
