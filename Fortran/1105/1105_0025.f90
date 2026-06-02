   module m1
     type t1                
       integer(8)::z1
       character(:),allocatable::zx(:)
       class(t1),allocatable::zw(:)
     end type
     type,extends(t1)::t1e 
       integer(8)::z2
       character(:),allocatable::zy(:)
     end type
     type tt
       class(t1),allocatable::z3(:)   
     end type
     type t4
       integer(8)::dummy
       type(tt)::tv(2)
     end type
     type t3
       integer(8)::num
       class(t3),allocatable::tyy(:)
       type(t4)::tw(2)
       character(:),allocatable::zw(:)
     end type
     type,extends(t3)::t3e
       character(:),allocatable::zz(:)
     end type
      
     class (t3),allocatable::a1(:),a2(:)     
contains
     subroutine s1
     allocate(t3e::a2(2))                       
     kk=1
     call set_t3(a2,kk)
     allocate(a1,source=a2)   
     kk=1
     call reset_t3(a2,kk)
     kk=1
     call chk_t3(a1,kk)
     end
     recursive subroutine chk_t3(d,kk)
     class(t3)::d(:)
     if (d(2)%num/=kk) print *,20021
     kk=kk+1
     if (kk<5) then
      call chk_t3(d(2)%tyy,kk)
     endif
     do n1=1,2
     do n2=1,2
     do n3=1,2
     do n4=1,2
     do n5=1,2
     do n6=1,2
     select type(p=>d(n1)%tw(n2)%tv(n3)%z3(n4))
       type is(t1e)
         if (p%zx(n5)/='12')print *,6002
         if (p%zy(n5)/='12')print *,6012,n1,n2,n3,n4,n5,p%zy(n5)
         do k1=1,2
         select type(q=>p%zw)
           type is(t1e)
         if ((q(k1)%zx(n5)/='12'))print *,6202
         if ((q(k1)%zy(n5)/='12'))print *,6212
             select type(w=>q(k1)%zw)
               type is(t1e)
         if ((w(k1)%zx(n5)/='12'))print *,6102
         if ((w(k1)%zy(n5)/='12'))print *,6112
             end select
          end select
          end do
     end select
     end do
     end do
     end do
     end do
     if (d(n1)%zw(n2)/='12')print *,8601
     select type(p=>d(n1))
       type is(t3e)
         if (p    %zz(n2)/='12')print *,7601
     end select
     end do
     end do
     end
     recursive subroutine reset_t3(d,kk)
     class(t3)::d(:)
     kn=kk
     kk=kk+1
     if (d(2)%num/=kn) print *,20022,d%num, kk
     if (kk<5) then
      call reset_t3(d(2)%tyy,kk)
     endif
     do n1=1,2
     do n2=1,2
     do n3=1,2
     do n4=1,2
     do n5=1,2
     select type(p=>d(n1)%tw(n2)%tv(n3)%z3(n4))
       type is(t1e)
         if (p%zx(n5)/='12')print *,9002,n1,n2,n3,n4,n5,p%zx(n5)
         p%zx(n5)='ab'
         if (p%zy(n5)/='12')print *,9012
         p%zy(n5)='ab'
 do k1=1,2
         select type(q=>p%zw)
           type is(t1e)
         if (q(k1)%zx(n5)/='12')print *,9202
         q(k1)%zx(n5)='ab'
         if (q(k1)%zy(n5)/='12')print *,9212
         q(k1)%zy(n5)='ab'
             select type(w=>q(k1)%zw)
               type is(t1e)
         if (w(k1)%zx(n5)/='12')print *,9102
         w(k1)%zx(n5)='ab'
         if (w(k1)%zy(n5)/='12')print *,9112
         w(k1)%zy(n5)='ab'
     end select
     end select
 end do
     end select
     end do
     end do
     end do
     if (d(n1)%zw(n2)/='12')print *,8001
     d(n1)%zw(n2)='ab'
     select type(d)
       type is(t3e)
         if (d(n1)%zz(n2)/='12')print *,7001
         d(n1)%zz(n2)='ab'
     end select
     end do
     end do
     end
     recursive subroutine set_t3(d,kk)
     class(t3)::d(:)
     kn=kk
     kk=kk+1
     d(2)%num=kn
     allocate(t3e::d(2)%tyy(2))
     if (kk<5) then
      call set_t3(d(2 )%tyy,kk)
     endif
     do n1=1,2
     do n2=1,2
     do n3=1,2
     allocate(t1e::d(n1)%tw(n2)%tv(n3)%z3(2))
     do n4=1,2
     select type(p=>d(n1)%tw(n2)%tv(n3)%z3(n4))
       type is(t1e)
         allocate(p%zx(2),source='12')
         allocate(p%zy(2),source='12')
         allocate(t1e::p%zw(2))
         select type(q=>p%zw)
           type is(t1e)
             do k1=1,2
             allocate(q(k1)%zx(2),source='12')
             allocate(q(k1)%zy(2),source='12')
             allocate(t1e::q(k1)%zw(2))
             select type(w=>q(k1)%zw)
               type is(t1e)
                 allocate(w(k1)%zx(2),source='12')
                 allocate(w(k1)%zy(2),source='12')
             end select
             end do
     end select
     end select
     end do
     end do
     end do
     allocate(d(n1)%zw(2),source='12')
     select type(d)
       type is(t3e)
         allocate(d(n1)%zz(2),source='12')
     end select
     end do
     end
     end
     use m1
     call s1
     print *,'sngg851p : pass'
     end

