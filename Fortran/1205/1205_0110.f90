     module mod
       type :: b
          integer::d1
          class(*),allocatable::n
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          integer::dd2(1000)
       end type
     end module mod

     subroutine s1
     use mod
     class (*),allocatable :: v,u
     allocate(b::v)
             write (11,"(z16.16)") loc(v     )
select type(p=>v)
 type is(b)
     p%d1=1
     allocate(b::p%n)
select type(q=>p%n)
 type is(b)
             write (12,"(z16.16)") loc(q%n   )
     q  %d1=2
     allocate(b::q  %n)
select type(w=>q%n)
 type is(b)
             write (13,"(z16.16)") loc(w  %n )
     w %   d1=3
end select
end select
end select

     u=v

k=0
select type(p=>u)
 type is(b)
     if (p%d1/=1) print *,10001
select type(q=>p%n)
 type is(b)
     if (q  %d1/=2) print *,10002,q  %d1
select type(w=>q%n)
 type is(b)
     if (w    %d1/=3) print *,10003,w    %d1
     if (allocated(w    %n)) print *,10004
     k=1
end select
end select
end select
if (k/=1) print *,8192
     deallocate(v)
     !!!deallocate(u)
     end
use mod
do n=1,20
      call s1
end do
!call chk(11)
!call chk(12)
!call chk(13)
     print *,'sngg157r : pass'
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
