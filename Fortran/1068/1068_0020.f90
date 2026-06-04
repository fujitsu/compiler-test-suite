     module mod
       integer,parameter::mm=1000
       type :: base
          integer(8)::d0(2)
       end type base

       type, extends(base) :: ext
          integer(8)::d1
          character(:),allocatable::name
       end type ext

       type y
         integer(8)::xd(4)
         class(base), allocatable :: var
       end type
contains
       subroutine ss(yv  , value)
         type(y)::yv(2)
         class(base), intent(in) :: value
         m=2
         yv(m)%var=value
         write (33,"(z16.16)") loc(yv(m)%var)
       end subroutine
     end

     subroutine s1()
     use mod
         type(y)::yv(2)
     class(base), allocatable :: value
     m=2
     allocate(ext::yv(m)%var)
         write (34,"(z16.16)") loc(yv(m)%var)
     select type(p=>yv(m)%var)
       type is(ext)
         allocate(character(mm)::p%name)
         write (32,"(z16.16)") loc(p%name)
     end select
     allocate(value)
     call ss(yv , value)
     end
     do n=1,10
      call s1
     end do
!     call chk(32)
!     call chk(33)
!     call chk(34)
     print *,'sngg778q : pass'
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
