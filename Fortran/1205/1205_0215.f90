 module m
   type ty
     integer(8) :: value
     class(ty),allocatable::node  (:,:)
     character(:),allocatable::c1(:,:)
   end type
   type,extends(ty)::tye
     character(:),allocatable::c1e(:,:)
   end type
  type tt
     class(ty),allocatable::node1(:,:)
     integer(8) :: value2
    class(tt),allocatable::node2 (:,:)
     character(:),allocatable::c2(:,:)
   end type
   type,extends(tt)::tte
     character(:),allocatable::c2e(:,:)
   end type
 integer,parameter::loop=2
 character(*),parameter::a1=repeat('a',1000)
 character(*),parameter::b1=repeat('b',1000)
 contains
 recursive subroutine alc(t,n)
 class (ty) :: t(:,:)
   n=n+1
   t(2,2)%value=n
   allocate(t(2,2)%c1(2,2),source=a1)
 if (n<loop) then
   allocate(t(2,2)%node(2,2))
   call alc(t(2,2)%node,n)
 endif
 end
 recursive subroutine alc_tt(t,n2)
 class (tt) :: t(:,:)
   n2=n2+1
   t(2,2)%value2=n2+100
   allocate(t(2,2)%c2(2,2),source=a1)
   n=0
   allocate(t(2,2)%node1(2,2))
   call alc(t(2,2)%node1,n)

 if (n2<loop) then
   allocate(t(2,2)%node2(2,2))
   call alc_tt(t(2,2)%node2,n2)
 endif
 end
subroutine put_addr(t,unit)
 class (tt) :: t(:,:)
 integer::unit
 write (unit+1,"(z16.16)") loc(t(2,2)%c2  )
 write (unit+2,"(z16.16)") loc(t(2,2)%node1(2,2)%c1  )
 write (unit+3,"(z16.16)") loc(t(2,2)%node1(2,2)%node(2,2)%c1)
 write (unit+4,"(z16.16)") loc(t(2,2)%node2(2,2)%c2)
 write (unit+5,"(z16.16)") loc(t(2,2)%node2(2,2)%node1(2,2)%c1)
 write (unit+6,"(z16.16)") loc(t(2,2)%node2(2,2)%node1(2,2)%node(2,2)%c1)
end
subroutine set(t)
 class (tt) :: t(:,:)
 t(2,2)%c2=b1
 t(2,2)%node1(2,2)%c1=b1
 t(2,2)%node1(2,2)%node(2,2)%c1=b1
 if (allocated(t(2,2)%node1(2,2)%node(2,2)%node)) print *,8002
 t(2,2)%node2(2,2)%c2=b1
 t(2,2)%node2(2,2)%node1(2,2)%c1=b1
 t(2,2)%node2(2,2)%node1(2,2)%node(2,2)%c1=b1
 if (allocated(t(2,2)%node2(2,2)%node1(2,2)%node(2,2)%node)) print *,8003
 if (allocated(t(2,2)%node2(2,2)%node2)) print *,8004
end

subroutine chk_value(d)
 class (tt) :: d(:,:)
 if (d(2,2)%value2/=101) print *,7001
 if (d(2,2)%c2(2,2)/=a1) print *,7002
 if (d(2,2)%node1(2,2)%value/=1) print *,7003
 if (d(2,2)%node1(2,2)%c1(2,2)/=a1) print *,7004
 if (d(2,2)%node1(2,2)%node(2,2)%value/=2) print *,7013
 if (d(2,2)%node1(2,2)%node(2,2)%c1(2,2)/=a1) print *,7014
 if (d(2,2)%node2(2,2)%value2/=102) print *,7011
 if (d(2,2)%node2(2,2)%c2(2,2)/=a1) print *,7012
 if (d(2,2)%node2(2,2)%node1(2,2)%value/=1) print *,7031,d(2,2)%node2(2,2)%node1(2,2)%value
 if (d(2,2)%node2(2,2)%node1(2,2)%c1(2,2)/=a1) print *,7032
 if (d(2,2)%node2(2,2)%node1(2,2)%node(2,2)%value/=2) print *,7042
 if (d(2,2)%node2(2,2)%node1(2,2)%node(2,2)%c1(2,2)/=a1) print *,7042
end
 end module

 subroutine s1
 USE m
type g
 class (tt),allocatable:: t(:,:),y(:,:)
end type
type(g)::h(2,2)
k=2
allocate(tte::h(k,k)%y(2,2))
 n2=0
 call alc_tt(h(k,k)%y,n2)
 call put_addr(h(k,k)%y,1000)

allocate(h(k,k)%t(2,2))

 n2=0
 call alc_tt(h(k,k)%t,n2)
 call put_addr(h(k,k)%t,2000)

h(k,k)%y=h(k,k)%t

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
 print *,'sngg262r : pass'
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
