 module m
   type ty
     integer(8) :: value
     class(* ),allocatable::node
     character(:),allocatable::c1
   end type
   type,extends(ty)::tye
     character(:),allocatable::c1e
   end type
  type tt
     class(* ),allocatable::node1
     integer(8) :: value2
    class(* ),allocatable::node2
     character(:),allocatable::c2
   end type
   type,extends(tt)::tte
     character(:),allocatable::c2e
   end type
   type,extends(tte)::ttx
     character(:),allocatable::c2ee
   end type
 integer,parameter::loop=2
 character(*),parameter::a1=repeat('a',1000)
 character(*),parameter::b1=repeat('b',1000)
 contains
 recursive subroutine alc(t,n)
 class (* ),allocatable :: t
   n=n+1
select type(w=>t)
 class is(ty)
   w%value=n
   allocate(w%c1,source=a1)
 if (n<loop) then
   allocate(tye::w%node)
   call alc(w%node,n)
 endif
end select
   select type(t)
    type is(tye)
     allocate(t%c1e,source=a1)
   end select
 end
 recursive subroutine alc_tt(t,n2)
 class (* ),allocatable :: t
   n2=n2+1
select type(w=>t)
 class is(tt)
   w%value2=n2+100
   allocate(w%c2,source=a1)
   n=0
   allocate(tye::w%node1)
   call alc(w%node1 ,n)
 if (n2<loop) then
   allocate(tte::w%node2)
   call alc_tt(w%node2,n2)
 endif
   end select
   select type(t)
    type is(tte)
     allocate(t%c2e,source=a1)
   end select
 end
subroutine put_addr(t,unit)
 class (tt) :: t
 integer::unit
 select type(t)
   type is(tte)
    write (unit+7,"(z16.16)") loc(t%c2e)
    select type(p=>t%node1)
      type is(tye)
        write (unit+8,"(z16.16)") loc(p      %c1e )
        select type(q=>p%node)
          type is(tye)
            write (unit+9,"(z16.16)") loc(q      %c1e )
        end select
    end select
    select type(p=>t%node2)
      type is(tte)
        write (unit+10,"(z16.16)") loc(p      %c2e )
        select type(q=>p%node1)
          type is(tye)
            write (unit+11,"(z16.16)") loc(q      %c1e )
            select type(w=>q%node)
              type is(tye)
              write (unit+12,"(z16.16)") loc(w      %c1e )
            end select
        end select
    end select
 end select
end
subroutine set(t)
 class (* ),allocatable :: t
select type(t)
class is(tt)
 t%c2=b1
k=0
select type(p=>t%node1)
 class is(ty)
 p      %c1=b1
select type(q=>p%node )
 class is(ty)
 q           %c1=b1
 if (allocated(q           %node)) print *,8002
k=1
end select
end select
  if (k/=1) print *,2893
k=0
select type(p=>t%node2)
 class is(tt)
 p      %c2=b1
 if (allocated(p      %node2)) print *,8004
select type(q=>p%node1)
 class is(ty)
 q            %c1=b1
select type(w=>q%node )
 class is(ty)
 w                 %c1=b1
 if (allocated(                w %node)) print *,8003
k=1
end select
end select
end select
end select
  if (k/=1) print *,28931
k=0
 select type(t)
   type is(tte)
    t%c2e=b1
    select type(p=>t%node1)
      type is(tye)
        p      %c1e =b1
        select type(q=>p%node)
          type is(tye)
            q      %c1e =b1
            k=1
        end select
    end select
    if (k/=1) print *,7281
    k=0
    select type(p=>t%node2)
      type is(tte)
        p      %c2e =b1
        select type(q=>p%node1)
          type is(tye)
            q      %c1e =b1
            select type(w=>q%node)
              type is(tye)
              w      %c1e =b1
            k=1
            end select
        end select
    end select
 end select
    if (k/=1) print *,7282
end

subroutine chk_value(d)
 class (* ),allocatable :: d
k=0
select type(d)
 class is(tt)
 if (d%value2/=101) print *,7001
 if (d%c2/=a1) print *,7002
select type(p=>d%node1)
 class is(ty)
 if (p      %value/=1) print *,7003
 if (p      %c1/=a1) print *,7004
select type(q=>p%node )
 class is(ty)
 if (q           %value/=2) print *,7013
 if (q           %c1/=a1) print *,7014
k=1
end select
end select
  if (k/=1) print *,28935
k=0
select type(p=>d%node2)
 class is(tt)
 if (p      %value2/=102) print *,7011
 if (p      %c2/=a1) print *,7012
select type(q=>p%node1)
 class is(ty)
 if (q            %value/=1) print *,7031
 if (q            %c1/=a1) print *,7032
select type(w=>q%node )
 class is(ty)
 if (w                 %value/=2) print *,7042
 if (w                 %c1/=a1) print *,7042
 k=1
end select
end select
end select
end select
  if (k/=1) print *,28938
    k=0
 select type(t=>d)
   type is(tte)
    if (t%c2e/=a1) print *,70001
    select type(p=>t%node1)
      type is(tye)
        if (p      %c1e/=a1) print *,70002
        select type(q=>p%node)
          type is(tye)
            if (q      %c1e /=a1) print *,70003
            k=1
        end select
    end select
    if (k/=1) print *,70090
    k=0
    select type(p=>t%node2)
      type is(tte)
        if (p      %c2e /=a1) print *,70011
        select type(q=>p%node1)
          type is(tye)
            if (q      %c1e /=a1) print *,70012
            select type(w=>q%node)
              type is(tye)
              if (w      %c1e /=a1) print *,70013
            k=1
            end select
        end select
    end select
 end select
    if (k/=1) print *,70091
end
 end module

 subroutine s1
 USE m
 class (* ),allocatable:: t,y
allocate(ttx::y)
 n2=0
 call alc_tt(y,n2)
select type(y)
 class is(tt)
 call put_addr(y,1000)
end select

allocate(tte::t)

 n2=0
 call alc_tt(t,n2)
select type(t)
 type is(tte)
 call put_addr(t,2000)
end select

y=t

if (.not.same_type_as(y,t)) print *,5002
call set(t)
k=0
select type(p=>y)
 class is(tt)
call chk_value(y)
k=1
end  select
if (k/=1) print *,2893
 end
do k=1,20
 call s1
end do
!call chk(2007)
!call chk(2008)
!call chk(2009)
!call chk(2010)
!call chk(2011)
!call chk(2012)
 print *,'sngg186r : pass'
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
