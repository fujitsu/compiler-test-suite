 module m
   type ty
     integer(8) :: value
     class(* ),allocatable::node(:)
     class(* ),allocatable::c1(:)
   end type
   type,extends(ty)::tye
     class(* ),allocatable::c1e(:)
   end type
  type tt
     class(* ),allocatable::node1(:)
     integer(8) :: value2
    class(* ),allocatable::node2 (:)
     class(*)    ,allocatable::c2(:)
   end type
   type,extends(tt)::tte
     class(*),allocatable::c2e(:)
   end type
  type,extends(tte)::ttx
     class(*)    ,allocatable::c2ee(:)
   end type
 integer,parameter::loop=2
 character(*),parameter::a1=repeat('a',1000)
 character(*),parameter::b1=repeat('b',1000)
 contains
 recursive subroutine alc(t,n)
 class (* ),allocatable :: t(:)
   n=n+1
select type(t)
 class is(ty)
   t(2)%value=n
   allocate(t(2)%c1(2),source=a1)
end select
 if (n<loop) then
select type(p=>t)
 class is(ty)
   allocate(tye::p(2)%node(2))
   call alc(p(2)%node,n)
end select
 endif
 select type(t)
    type is(tye)
     allocate(t(2)%c1e(2),source=a1)
   end select
 end
 recursive subroutine alc_tt(t,n2)
 class (* ),allocatable :: t(:)
   n2=n2+1
select type(t)
 class is(tt)
   t(2)%value2=n2+100
   allocate(t(2)%c2(2),source=a1)
   n=0
   allocate(tye::t(2)%node1(2))
end select
 select type(p=>t)
   class is(tt)
   call alc(p(2)%node1         ,n)
end select

 if (n2<loop) then
 select type(p=>t)
   class is(tt)
   allocate(tte::p(2)%node2(2))
   call alc_tt(p(2)%node2         ,n2)
end select
 endif
   select type(t)
    type is(tte)
     allocate(t(2)%c2e(2),source=a1)
   end select
 end
subroutine put_addr(t,unit)
 class (* ),allocatable :: t(:)
 integer::unit
select type(t)
 class is(tt)
 write (unit+1,"(z16.16)") loc(t(2)%c2  )
select type(p=>t(2)%node1)
 class is(ty)
 write (unit+2,"(z16.16)") loc(p         (2)%c1  )
select type(q=>p(2)%node)
 class is(ty)
 write (unit+3,"(z16.16)") loc(q                 (2)%c1)
end select
end select
select type(p=>t(2)%node2)
 class is(tt)
 write (unit+4,"(z16.16)") loc(p         (2)%c2)
select type(q=>p(2)%node1)
 class is(ty)
 write (unit+5,"(z16.16)") loc(q                  (2)%c1)
select type(w=>q(2)%node)
 class is(ty)
 write (unit+6,"(z16.16)") loc(w                          (2)%c1)
end select
end select
end select

select type(t)
   type is(tte)
    write (unit+7,"(z16.16)") loc(t(2)%c2e)
    select type(p=>t(2)%node1)
      type is(tye)
        write (unit+8,"(z16.16)") loc(p      (2)%c1e )
        select type(q=>p(2)%node)
          type is(tye)
            write (unit+9,"(z16.16)") loc(q      (2)%c1e )
        end select
    end select
    select type(p=>t(2)%node2)
      type is(tte)
        write (unit+10,"(z16.16)") loc(p      (2)%c2e )
        select type(q=>p(2)%node1)
          type is(tye)
            write (unit+11,"(z16.16)") loc(q      (2)%c1e )
            select type(w=>q(2)%node)
              type is(tye)
              write (unit+12,"(z16.16)") loc(w      (2)%c1e )
            end select
        end select
    end select
 end select

end select
end
subroutine set(t)
 class (* ),allocatable :: t(:)
select type(t)
 class is(tt)
 t(2)%c2=b1
select type(p=>t(2)%node1)
 class is(ty)
 p         (2)%c1=b1
select type(q=>p(2)%node)
 class is(ty)
 q                 (2)%c1=b1
 if (allocated(q                 (2)%node)) print *,8002
end select
end select
select type(p=>t(2)%node2)
 class is(tt)
 p         (2)%c2=b1
 if (allocated(p        (2) %node2)) print *,8004
select type(q=>p(2)%node1)
 class is(ty)
 q                  (2)%c1=b1
select type(w=>q(2)%node)
 class is(ty)
 w                          (2)%c1=b1
 if (allocated(w                          (2)%node)) print *,8003
end select
end select
end select
end select
end

subroutine chk_value(d)
 class (* ),allocatable :: d(:)
k=0
select type(d)
 class is(tt)
 if (d(2)%value2/=101) print *,7001
select type(y=>d(2)%c2   )
  type is(character(*))
 if (y      (2)/=a1) print *,7002
end select
select type(p=>d(2)%node1)
 class is(ty)
 if (p         (2)%value/=1) print *,7003
select type(y=>p(2)%c1   )
  type is(character(*))
 if (               y(2)/=a1) print *,7004
end select
select type(q=>p(2)%node)
 class is(ty)
 if (q                 (2)%value/=2) print *,7013
select type(y=>q(2)%c1   )
  type is(character(*))
 if (                       y(2)/=a1) print *,7014
end select
end select
end select
select type(p=>d(2)%node2)
 class is(tt)
 if (p         (2)%value2/=102) print *,7011
select type(y=>p(2)%c2   )
  type is(character(*))
 if (               y(2)/=a1) print *,7012
end select
select type(w=>p(2)%node1)
 class is(ty)
 if (w                  (2)%value/=1) print *,7031
select type(y=>w(2)%c1   )
  type is(character(*))
 if (y                        (2)/=a1) print *,7032
end select
select type(g=>w(2)%node)
 class is(ty)
 if (g                          (2)%value/=2) print *,7041
select type(y=>g(2)%c1   )
  type is(character(*))
 if (y                                (2)/=a1) print *,7042
end select
k=1
end select
end select
end select
end select
if (k/=1) print *,20338
end
 end module

 subroutine s1
 USE m
 class (* ),allocatable:: t(:),y(:)
allocate(tte::y(2))
 n2=0
 call alc_tt(y,n2)
 call put_addr(y,1000)

allocate(tt::t(2))

 n2=0
 call alc_tt(t,n2)
 call put_addr(t,2000)

y=t

call set(t)
call chk_value(y)
 end
do k=1,20
 call s1
end do
!call chk(1001)
!call chk(1002)
!call chk(1003)
!call chk(1004)
!call chk(1005)
!call chk(1006)
!call chk(2001)
!call chk(2002)
!call chk(2003)
!call chk(2004)
!call chk(2005)
!call chk(2006)
 print *,'sngg267r : pass'
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
