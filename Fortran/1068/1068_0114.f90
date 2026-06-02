     module mod
       integer,parameter::m=1000
       type :: base
          integer(8)::d0(m)
       end type base

       type, extends(base) :: ext
          integer(8)::d1
          character(:),allocatable::name(:)
       end type ext
contains
       subroutine ss(var, value)
         class(*   ), allocatable, intent(inout) :: var(:)
         class(base), intent(in) :: value(:)
         var=value
         write (301,"(z16.16)") loc(var)
       end subroutine
     end module mod

     subroutine s1
     use mod
   class(*   ), allocatable :: var(:)
     type(ext), allocatable :: value(:)
     allocate(base::var(2))
         write (300,"(z16.16)") loc(var)
     allocate(value(2))
     allocate(value(1)%name(2),source='1')
     allocate(value(2)%name(2),source='1')
     call ss(var, value)
     value(1)%name='a'
     value(2)%name='a'
     select type(p=>var)
       type is(ext)
         if (p(1)%name(1)/='1') print *,2021
         if (p(2)%name(2)/='1') print *,202
         write (302,"(z16.16)") loc(p(1) %name)
     end select
     end
     do n=1,10
      call s1
     end do
!    call chk(300)
 !   call chk(301)
  !  call chk(302)
     print *,'sngg872q : pass'
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
