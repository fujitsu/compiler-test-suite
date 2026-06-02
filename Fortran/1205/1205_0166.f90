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
 class (* ) :: t
   n=n+1
 select type(p=>t)
  type is(ty)
   p%value=n
   allocate(p%c1,source=a1)
 if (n<loop) then
   allocate(ty::p%node)
   call alc(p%node,n)
 endif
end select
 end
 recursive subroutine alc_tt(t,n2)
 class (* ) :: t
 select type(p=>t)
  type is(tt)
   n2=n2+1
   p%value2=n2+100
   allocate(p%c2,source=a1)
   n=0
   allocate(ty::p%node1)
   call alc(p%node1,n)

 if (n2<loop) then
   allocate(tt::p%node2)
   call alc_tt(p%node2,n2)
 endif
 end select
 end
subroutine set(t)
 class (* ) :: t
k=0
 select type(t)
  type is(tt)
 t%c2=b1
 select type(p=>t%node1)
  type is(ty)
 p      %c1=b1
 select type(q=>p%node)
  type is(ty)
 q           %c1=b1
 if (allocated(q           %node)) print *,8002
 end select
 end select
 select type(p=>t%node2)
  type is(tt)
 p      %c2=b1
 if (allocated(p      %node2)) print *,8004
 select type(q=>p%node1)
  type is(ty)
 q            %c1=b1
 select type(g=>q%node)
  type is(ty)
 g                 %c1=b1
 if (allocated(g                 %node)) print *,8003
  k=1
 end select
 end select
 end select
 end select
  if (k/=1) print *,2893
end
 subroutine put_addr(t,unit)
  class (* ) :: t
  integer::unit
 select type(t)
  type is(tt)
  write (unit+1,"(z16.16)") loc(t%c2  )
 select type(p=>t%node1)
  type is(ty)
  write (unit+2,"(z16.16)") loc(p      %c1  )
 select type(q=>p%node)
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
  write (unit+6,"(z16.16)") loc(w                 %c1)
 end select
 end select
 end select
 end select
 end

subroutine chk_value(d)
 class (* ) :: d
k=0
 select type(d)
  type is(tt)
 if (d%value2/=101) print *,7001
 if (d%c2/=a1) print *,7002
 select type(p=>d%node1)
  type is(ty)
 if (p      %value/=1) print *,7003
 if (p      %c1/=a1) print *,7004
 select type(q=>p%node)
  type is(ty)
 if (q           %value/=2) print *,7013
 if (q           %c1/=a1) print *,7014
 end select
 end select
 select type(p=>d%node2)
  type is(tt)
 if (p      %value2/=102) print *,7011
 if (p      %c2/=a1) print *,7012
 select type(q=>p%node1)
  type is(ty)
 if (q            %value/=1) print *,7031
 if (q            %c1/=a1) print *,7032
 select type(w=>q%node)
  type is(ty)
 if (w                 %value/=2) print *,7042
 if (w                 %c1/=a1) print *,7042
k=1
 end select
 end select
 end select
 end select
if (k/=1) print *,2836
end
 end module

 subroutine s1
 USE m
type g
 class (* ),allocatable:: t,y
end type
type(g)::h(2,2)
k=2
 allocate(tte::h(k,k)%y)
  n2=0
  call alc_tt(h(k,k)%y,n2)
  call put_addr(h(k,k)%y,1000)


k=2
allocate(tt::h(k,k)%t)

 n2=0
 call alc_tt(h(k,k)%t,n2)

  call put_addr(h(k,k)%t,2000)

h(k,k)%y=h(k,k)%t

call set(h(k,k)%t)
call chk_value(h(k,k)%y)
 end
do k=1,120
 call s1
end do
! call chk(1001)
! call chk(1002)
! call chk(1003)
! call chk(1004)
! call chk(1005)
! call chk(1006)
! call chk(2001)
! call chk(2002)
! call chk(2003)
! call chk(2004)
! call chk(2005)
! call chk(2006)
 print *,'sngg213r : pass'
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
