     module mod
       integer,parameter::m=1000
       type :: base
          integer(8)::d0(2)
       end type base

       type, extends(base) :: ext
          integer(8)::d1
          character(:),allocatable::name
       end type ext
contains
       subroutine ss(var, value)
         class(base), allocatable, intent(inout) :: var
         class(base), intent(in) :: value
         var=value
         write (15,"(z16.16)") loc(var)
       end subroutine
     end module mod

     subroutine s1
     use mod
     class(base), allocatable :: var
     class(base), allocatable :: value
     allocate(ext::var)
         write (16,"(z16.16)") loc(var)
     select type(p=>var)
       type is(ext)
         allocate(character(m)::p%name)
         write (14,"(z16.16)") loc(p%name)
     end select
     allocate(value)
     call ss(var, value)
     end
     do n=1,10
      call s1
     end do
!     call chk(14)
!     call chk(15)
!     call chk(16)
     print *,'sngg772q : pass'
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
