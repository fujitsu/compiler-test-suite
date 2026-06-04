     module mod
       type :: b
          integer::d1
          class(*),allocatable::n
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c
       end type
       character(*),parameter::cp=repeat('1',1000)
     end module mod

     subroutine s1
     use mod
     class (*),allocatable :: v,u
     allocate(e::v)
     select type(v)
      type is(e)
       allocate(v%c,source=cp )
             write (21,"(z16.16)") loc(v%c  )
     end select
  select type(p=>v)
 type is(e)
     p%d1=1
     allocate(e::p%n)
     select type(q=>p%n)
      type is(e)
       allocate(q%c,source=cp )
             write (22,"(z16.16)") loc(p%c  )
       q%d1=2
     allocate(e::q  %n)
     select type(w=>q  %n)
      type is(e)
       allocate(w%c,source=cp )
             write (23,"(z16.16)") loc(w%c  )
     w    %d1=3
     end select
     end select
     end select

     u=v

k=0
  select type(p=>u)
 type is(e)
     if (p%d1/=1) print *,10001
     select type(q=>p%n)
      type is(e)
     if (q  %d1/=2) print *,10002
     select type(w=>q  %n)
      type is(e)
     if (w    %d1/=3) print *,10003
     if (allocated(w    %n)) print *,10004
     k=1
     end select
     end select
     end select
if (k/=1) print *,2929
     deallocate(v)
     !!!deallocate(u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(21)
!call chk(22)
!call chk(23)
     print *,'sngg158r : pass'
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
