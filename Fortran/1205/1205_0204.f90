     module mod
       type :: b
          integer::d1
          class(*),allocatable::n(:)
          integer::dd1(1000)
       end type
       type,extends(b) :: e
          integer::d2
          integer::dd2(1000)
       end type
 contains

     subroutine s1(k)
type w
     integer(8)::d1
     class (*),allocatable :: v(:),u(:)
end type
type(w)::z(k)
mm=2
     allocate(b::z(mm)%v(mm))
             write (11,"(z16.16)") loc(z(mm)%v     )
select type(p=>z(mm)%v)
  type is(b)
     p     (mm)%d1=1
     allocate(b:: p    (mm)%n(mm))
             write (12,"(z16.16)") loc(p     (mm)%n   )
select type(q=>p(mm)%n)
  type is(b)
     q          (mm)%d1=2
     allocate(b::  q        (mm)%n(mm))
             write (13,"(z16.16)") loc(q          (mm)%n )
select type(w=>q(mm)%n)
  type is(b)
     w               (mm)%d1=3
end select
end select
end select

     z(mm)%u=z(mm)%v

select type(p=>z(mm)%u)
  type is(b)
     if (p     (mm)%d1/=1) print *,10001
select type(q=>p(mm)%n)
  type is(b)
     if (q          (mm)%d1/=2) print *,10002
select type(w=>q(mm)%n)
  type is(b)
     if (w               (mm)%d1/=3) print *,10003
     if (allocated(w               (mm)%n)) print *,10004
end select
end select
end select
     deallocate(z(mm)%v)
     !!!deallocate(z(2)%u)
     end
end
use mod
do n=1,20
      call s1(2)
end do
!call chk(11)
!call chk(12)
!call chk(13)
     print *,'sngg251r : pass'
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
