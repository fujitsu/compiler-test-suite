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
   allocate(ty::t%node)
select type(p=>t%node)
 type is(ty)
   call alc(p     ,n)
end select
 endif
 end
 recursive subroutine alc_tt(t,n2)
 class (tt) :: t
   n2=n2+1
   t%value2=n2+100
   allocate(t%c2,source=a1)
   n=0
   allocate(ty::t%node1)
select type(p=>t%node1)
 type is(ty)
   call alc(p      ,n)
end select

 if (n2<loop) then
   allocate(tt::t%node2)
select type(p=>t%node2)
 type is(tt)
   call alc_tt(p      ,n2)
end select
 endif
 end
subroutine put_addr(t,unit)
 class (tt) :: t
 integer::unit
 write (unit+1,"(z16.16)") loc(t%c2  )
select type(p=>t%node1)
 type is(ty)
 write (unit+2,"(z16.16)") loc(p      %c1  )
select type(q=>p%node )
 type is(ty)
 write (unit+3,"(z16.16)") loc(q           %c1)
end select
end select
select type(p=>t%node2)
 type is(tt)
 write (unit+4,"(z16.16)") loc(p      %c2)
select type(q=>p%node1)
 type is(ty)
 write (unit+5,"(z16.16)") loc(q            %c1)
select type(w=>q%node )
 type is(ty)
 write (unit+6,"(z16.16)") loc(    w        %c1)
end select
end select
end select
end
subroutine set(t)
 class (tt) :: t
 t%c2=b1
k=0
select type(p=>t%node1)
 type is(ty)
 p      %c1=b1
select type(q=>p%node )
 type is(ty)
 q           %c1=b1
 if (allocated(q           %node)) print *,8002
k=1
end select
end select
  if (k/=1) print *,2893
k=0
select type(p=>t%node2)
 type is(tt)
 p      %c2=b1
 if (allocated(p      %node2)) print *,8004
select type(q=>p%node1)
 type is(ty)
 q            %c1=b1
select type(w=>q%node )
 type is(ty)
 w                 %c1=b1
 if (allocated(                w %node)) print *,8003
k=1
end select
end select
end select
  if (k/=1) print *,28931
end

subroutine chk_value(d)
 class (tt) :: d
 if (d%value2/=101) print *,7001
 if (d%c2/=a1) print *,7002
k=0
select type(p=>d%node1)
 type is(ty)
 if (p      %value/=1) print *,7003
 if (p      %c1/=a1) print *,7004
select type(q=>p%node )
 type is(ty)
 if (q           %value/=2) print *,7013
 if (q           %c1/=a1) print *,7014
k=1
end select
end select
  if (k/=1) print *,28935
k=0
select type(p=>d%node2)
 type is(tt)
 if (p      %value2/=102) print *,7011
 if (p      %c2/=a1) print *,7012
select type(q=>p%node1)
 type is(ty)
 if (q            %value/=1) print *,7031
 if (q            %c1/=a1) print *,7032
select type(w=>q%node )
 type is(ty)
 if (w                 %value/=2) print *,7042
 if (w                 %c1/=a1) print *,7042
 k=1
end select
end select
end select
  if (k/=1) print *,28938
end
 end module

 subroutine s1
 USE m
 class (* ),allocatable:: t,y
allocate(tte::y)
 n2=0
allocate(tt::t)

 n2=0
select type(t)
 type is(tt)
 call alc_tt(t,n2)
 call put_addr(t,2000)
end select

y=t

select type(t)
 type is(tt)
call set(t)
end select
k=0
select type(y)
 type is(tt)
call chk_value(y)
k=1
end select
  if (k/=1) print *,58938
 end
do k=1,20
 call s1
end do
!call chk(2001)
!call chk(2002)
!call chk(2003)
!call chk(2004)
!call chk(2005)
!call chk(2006)
 print *,'sngg184r : pass'
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
