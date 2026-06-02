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
 class (* ) :: t
select type(p=>t)
 class is(ty)
   n=n+1
   p%value=n
   allocate(p%c1,source=a1)
 if (n<loop) then
   allocate(tye::p%node)
   call alc(p%node,n)
 endif
   end select
   select type(t)
    type is(tye)
     allocate(t%c1e,source=a1)
   end select
 end
 recursive subroutine alc_tt(t,n2)
 class (* ) :: t
select type(p=>t)
 class is(tt)
   n2=n2+1
   p%value2=n2+100
   allocate(p%c2,source=a1)
   n=0
   allocate(tye::p%node1)
   call alc(p%node1,n)
 if (n2<loop) then
   allocate(tte::p%node2)
   call alc_tt(p%node2,n2)
 endif
   end select
   select type(t)
    type is(tte)
     allocate(t%c2e,source=a1)
   end select
 end
subroutine put_addr(t,unit)
 class (* ) :: t
 integer::unit
select type(t)
 class is(tt)
 write (unit+1,"(z16.16)") loc(t%c2  )
select type(p=>t%node1)
  class is(ty)
 write (unit+2,"(z16.16)") loc(p      %c1  )
select type(q=>p%node )
  class is(ty)
 write (unit+3,"(z16.16)") loc(q           %c1)
   end select
   end select
select type(p=>t%node2)
  class is(tt)
 write (unit+4,"(z16.16)") loc(p      %c2)
select type(q=>p%node1)
  class is(ty)
 write (unit+5,"(z16.16)") loc(q            %c1)
select type(w=>q%node)
  class is(ty)
 write (unit+6,"(z16.16)") loc(w                 %c1)
   end select
   end select
   end select
   end select
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
 class (* ) :: t
k=0
select type(t)
 class is(tt)
 t%c2=b1
select type(p=>t%node1)
 class is(ty)
 p      %c1=b1
select type(q=>p%node )
 class is(ty)
 q           %c1=b1
 if (allocated(q           %node)) print *,8002
        end select
    end select
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
 if (allocated(w                 %node)) print *,8003
  k=1
    end select
 end select
    end select
 end select
    if (k/=1) print *,7581
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
 class (* ) :: d
    k=0
 select type(t=>d)
   class is(tt)
 if (t%value2/=101) print *,7001
 if (t%c2/=a1) print *,7002
 select type(p=>t%node1)
  class is(ty)
 if (p      %value/=1) print *,7003
 if (p      %c1/=a1) print *,7004
 select type(q=>p%node)
  class is(ty)
 if (q           %value/=2) print *,7013
 if (q           %c1/=a1) print *,7014
  end select
 end select
 select type(p=>t%node2)
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
    if (k/=1) print *,50090
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
type g
 class (* ),allocatable:: t,y
end type
type(g)::h(2,2)
k=2
allocate(ttx::h(k,k)%y)
 n2=0
 call alc_tt(h(k,k)%y,n2)

 call put_addr(h(k,k)%y,1000)

allocate(tte::h(k,k)%t)

 n2=0
 call alc_tt(h(k,k)%t,n2)
 call put_addr(h(k,k)%t,2000)

h(k,k)%y=h(k,k)%t

if (.not.same_type_as(h(k,k)%y,h(k,k)%t)) print *,5002
call set(h(k,k)%t)
call chk_value(h(k,k)%y)
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
!call chk(2007)
!call chk(2008)
!call chk(2009)
!call chk(2010)
!call chk(2011)
!call chk(2012)
 print *,'sngg214r : pass'
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
