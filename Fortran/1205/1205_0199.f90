 module m
   type ty
     integer(8) :: value
     class(* ),allocatable::node(:)
     character(:),allocatable::c1(:)
   end type
   type,extends(ty)::tye
     character(:),allocatable::c1e(:)
   end type
  type tt
     class(* ),allocatable::node1(:)
     integer(8) :: value2
    class(* ),allocatable::node2 (:)
     character(:),allocatable::c2(:)
   end type
   type,extends(tt)::tte
     character(:),allocatable::c2e(:)
   end type
 integer,parameter::loop=2
 character(*),parameter::a1=repeat('a',1000)
 character(*),parameter::b1=repeat('b',1000)
 contains
 recursive subroutine alc(t,n)
 class (* ) :: t(:)
   n=n+1
select type(t)
 class is(ty)
   t(2)%value=n
   allocate(t(2)%c1(2),source=a1)
 if (n<loop) then
   allocate(ty::t(2)%node(2))
 select type(p=>t(2)%node)
   class is(ty)
   call alc(p        ,n)
end select
 endif
end select
 end
 recursive subroutine alc_tt(t,n2)
 class (* ) :: t(:)
   n2=n2+1
select type(t)
 class is(tt)
   t(2)%value2=n2+100
   allocate(t(2)%c2(2),source=a1)
   n=0
   allocate(ty::t(2)%node1(2))
 select type(p=>t(2)%node1)
   class is(ty)
   call alc(p         ,n)
end select

 if (n2<loop) then
   allocate(tt::t(2)%node2(2))
 select type(p=>t(2)%node2)
   class is(tt)
   call alc_tt(p         ,n2)
end select
 endif
end select
 end
subroutine set(t)
 class (* ) :: t(:)
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
 class (* ) :: d(:)
k=0
select type(d)
 class is(tt)
 if (d(2)%value2/=101) print *,7001
 if (d(2)%c2(2)/=a1) print *,7002
select type(p=>d(2)%node1)
 class is(ty)
 if (p         (2)%value/=1) print *,7003
 if (p         (2)%c1(2)/=a1) print *,7004
select type(q=>p(2)%node)
 class is(ty)
 if (q                 (2)%value/=2) print *,7013
 if (q                 (2)%c1(2)/=a1) print *,7014
end select
end select
select type(p=>d(2)%node2)
 class is(tt)
 if (p         (2)%value2/=102) print *,7011
 if (p         (2)%c2(2)/=a1) print *,7012
select type(w=>p(2)%node1)
 class is(ty)
 if (w                  (2)%value/=1) print *,7031
 if (w                  (2)%c1(2)/=a1) print *,7032
select type(g=>w(2)%node)
 class is(ty)
 if (g                          (2)%value/=2) print *,7042
 if (g                          (2)%c1(2)/=a1) print *,7042
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
allocate(tt::t(2))

 n2=0
 call alc_tt(t,n2)

y=t

call set(t)
call chk_value(y)
 end
 call s1
 print *,'sngg246r : pass'
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
