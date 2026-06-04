     module mod
       integer,parameter::m=1000
       type :: base
          integer(8)::d0(2)
       end type base

       type, extends(base) :: ext
          integer(8)::d1
          character(:),allocatable::name
       end type
       type y
         integer(8)::xd(4)
         class(*   ), allocatable :: var
       end type
contains
       subroutine ss(yv , value)
         class(base), intent(in) :: value
             class(y)::yv(:)
         do n=2,size(yv)
         yv(n)%var=value
         write (258,"(z16.16)") loc(yv(n)%var)
         end do
       end subroutine
     end module mod

     subroutine s1
     use mod
             class(y), allocatable::yv(:)
     class(base), allocatable :: value
     n=2
     allocate(yv(n))
     allocate(base::yv(n)%var)
         write (259,"(z16.16)") loc(yv(n)%var)
     select type(p=>yv(n)%var)
       type is(ext)
         allocate(character(m)::p%name)
         write (257,"(z16.16)") loc(p%name)
     end select
     allocate(value)
     call ss(yv , value)
     end
     do n=1,10
      call s1
     end do
     !call chk(257)
 !   call chk(258)
  !  call chk(259)
     print *,'sngg855q : pass'
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
