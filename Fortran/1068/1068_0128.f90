     module mod
       integer,parameter::m=1000
       type :: base
          integer(8)::d0(2)
       end type base

       type, extends(base) :: ext
          integer(8)::d1
          character(:),allocatable::name(:)
       end type
       type y
         integer(8)::xd(4)
         class(*   ), allocatable :: var(:)
       end type
contains
       subroutine ss(yv , value)
         class(base), intent(in) :: value(:)
             class(y)::yv
         yv%var=value
         write (343,"(z16.16)") loc(yv%var)
       end subroutine
     end module mod

     subroutine s1
     use mod
             class(y),allocatable::yv
     class(base), allocatable :: value(:)
     allocate(yv)
     allocate(base::yv%var(2))
         write (344,"(z16.16)") loc(yv%var)
     select type(p=>yv%var)
       type is(ext)
         allocate(character(m)::p(1)%name(2))
         allocate(character(m)::p(2)%name(2))
         write (342,"(z16.16)") loc(p(1)%name)
     end select
     allocate(value(2))
     call ss(yv , value)
     end
     do n=1,10
      call s1
     end do
     !call chk(342)
 !   call chk(343)
  !  call chk(344)
     print *,'sngg886q : pass'
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
