 module m
   type ty
     integer(8) :: value
     class(ty),allocatable::node  
     character(:),allocatable::c1
   end type
   type,extends(ty)::tye
     character(:),allocatable::c1e
   end type
  type tt
     class(ty),allocatable::node1
     integer(8) :: value2
    class(tt),allocatable::node2 
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
 class (ty) :: t
   n=n+1
   t%value=n
   allocate(t%c1,source=a1)
 if (n<loop) then
   allocate(tye::t%node)
   call alc(t%node,n)
 endif
   select type(t)
    type is(tye)
     allocate(t%c1e,source=a1)
   end select
 end
 recursive subroutine alc_tt(t,n2)
 class (tt) :: t
   n2=n2+1
   t%value2=n2+100
   allocate(t%c2,source=a1)
   n=0
   allocate(tye::t%node1)
   call alc(t%node1,n)
 if (n2<loop) then
   allocate(tte::t%node2)
   call alc_tt(t%node2,n2)
 endif
   select type(t)
    type is(tte)
     allocate(t%c2e,source=a1)
   end select
 end
subroutine put_addr(t,unit)
 class (tt) :: t
 integer::unit
 write (unit+1,"(z16.16)") loc(t%c2  )
 write (unit+2,"(z16.16)") loc(t%node1%c1  )
 write (unit+3,"(z16.16)") loc(t%node1%node%c1)
 write (unit+4,"(z16.16)") loc(t%node2%c2)
 write (unit+5,"(z16.16)") loc(t%node2%node1%c1)
 write (unit+6,"(z16.16)") loc(t%node2%node1%node%c1)
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
 class (tt) :: t
 t%c2=b1
 t%node1%c1=b1
 t%node1%node%c1=b1
 if (allocated(t%node1%node%node)) print *,8002
 t%node2%c2=b1
 t%node2%node1%c1=b1
 t%node2%node1%node%c1=b1
 if (allocated(t%node2%node1%node%node)) print *,8003
 if (allocated(t%node2%node2)) print *,8004
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
 class (tt) :: d
 if (d%value2/=101) print *,7001
 if (d%c2/=a1) print *,7002
 if (d%node1%value/=1) print *,7003
 if (d%node1%c1/=a1) print *,7004
 if (d%node1%node%value/=2) print *,7013
 if (d%node1%node%c1/=a1) print *,7014
 if (d%node2%value2/=102) print *,7011
 if (d%node2%c2/=a1) print *,7012
 if (d%node2%node1%value/=1) print *,7031,d%node2%node1%value
 if (d%node2%node1%c1/=a1) print *,7032
 if (d%node2%node1%node%value/=2) print *,7042
 if (d%node2%node1%node%c1/=a1) print *,7042
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
 class (tt),allocatable:: t,y
allocate(ttx::y)
 n2=0
 call alc_tt(y,n2)
 call put_addr(y,1000)

allocate(tte::t)

 n2=0
 call alc_tt(t,n2)
 call put_addr(t,2000)

y=t

if (.not.same_type_as(y,t)) print *,5002
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
!call chk(2007)
!call chk(2008)
!call chk(2009)
!call chk(2010)
!call chk(2011)
!call chk(2012)
 print*, "sngg039r : pass"
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
