     module mod
       type :: b
          integer::d1
          class(*),allocatable::n(:)
       end type
       type,extends(b) :: e
          integer::d2
          character(:),allocatable::c(:)
       end type
       character(*),parameter::cp=repeat('1',1000)
contains
subroutine alloc(d,unit)
     class (*):: d(:)
     integer::unit
select type(d)
 class is(b)
     d  (2)%d1=1
     k=0
     select type(p=>d)
       type is(e)
       k=1
       allocate(p(2)%c(2),source=cp )
             write (unit+11,"(z16.16)") loc(p(2)%c  )
     end select
     if (k/=1) print *,9202
     allocate(b::d  (2)%n(2))
     call ss1(d  (2)%n,unit)
   end select
  end
  subroutine ss1(g,unit)
     class (*),allocatable :: g(:)
     integer::unit
select type(g)
 class is(b)
     g  (2)%d1=2
     allocate(b::g  (2)%n(2))
     call ss2(g  (2)%n,unit)
   end select
  end
  subroutine ss2(f,unit)
     class (*),allocatable :: f(:)
     integer::unit
select type(f)
 class is(b)
     f  (2)%d1=3
     allocate(b::f  (2)%n(2))
     call ss3(f  (2)%n,unit)
   end select
  end
  subroutine ss3(h,unit)
     class (*),allocatable :: h(:)
     integer::unit
select type(h)
 class is(b)
     h  (2)%d1=4
   end select
  end
     subroutine s1(v,u)
     class (*) :: v(:),u(:)
call alloc(v,100)
call alloc(u,200)

  k=0
    select type(u)
     type is(e)
    select type(v)
     type is(e)
     u(2)%d1=v(2)%d1
     u(2)%n =v(2)%n
     u(2)%c =v(2)%c
     k=1
    end select
    end select
  if (k/=1) print *,2020


select type(u)
 class is(b)
     if (u(2)%d1/=1) print *,10001
select type(p=>u(2)%n)
 class is(b)
     if (p     (2)%d1/=2) print *,10002
select type(q=>p(2)%n)
 class is(b)
     if (q          (2)%d1/=3) print *,10003
select type(w=>q(2)%n)
 class is(b)
     if (w               (2)%d1/=4) print *,10004
     if (allocated(w               (2)%n)) print *,10005
  k=2
    end select
    end select
    end select
    end select
  if (k/=2) print *,20212
  k=0
    select type(u)
     type is(e)
     deallocate(u(2)%n)
     deallocate(u(2)%c)
     k=1
    end select
  if (k/=1) print *,2021
  k=0
    select type(v)
     type is(e)
     deallocate(v(2)%n)
     deallocate(v(2)%c)
     k=1
    end select
  if (k/=1) print *,2022
     end
     subroutine tt1
     class (*),allocatable :: v(:),u(:)
     allocate(e::v(2),u(2))
     call s1(v,u)
     end
     end module mod
use mod
do n=1,20
      call tt1
end do
!call chk(111)
!call chk(211)
     print *,'sngg232r : pass'
     end
   subroutine  chk(k)
     character(16)::x(1000)
     rewind (k)
     kk=1
     do
       read(k ,'(a)',end=100) x(kk)
       kk=kk+1
     end do
  100 continue
     kk=kk-1
     if (kk>1000) stop 999
     do nn=1,kk-1
      do nnn=nn+1,kk
        if (x(nn)==x(nnn)) return
      end do
     end do
  500 print *,"Please check UNIT",k
     end
