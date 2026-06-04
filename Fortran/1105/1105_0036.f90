module m1
     type t1                
       integer(8),allocatable::z1(:)
     end type
     type,extends(t1)::t1e 
       integer(8),allocatable::z2(:)
     end type
     type tt
       class(t1),allocatable::z3   (:)
     end type
     type,extends(tt)::tte 
       character(:),allocatable::ttez(:)
     end type
     type t4
       integer(8)::dummy
       class(tt),allocatable::tv(:)
     end type
     type,extends(t4)::t4e 
       character(:),allocatable::t4ez(:)
     end type
     type t3
       integer(8)::dummy
       class(t3),allocatable::tyy(:)
       class(t4),allocatable::tw(:)
     end type
     type,extends(t3)::t3e 
       character(:),allocatable::t4ez(:)
     end type
     class (* ),allocatable::a1(:),a2     (:)
     type(t1e)::v(2)
contains
recursive subroutine set_t3(d,kk)
type(t3)::d(:)
 if (kk>10) return
 allocate(t4e::d(2)%tw(2))
 select type(p=>d(2)%tw)
   type is(t4e)
     allocate(p(2)%t4ez(2),source='12')
 end select
 allocate(tte::d(2)%tw(2)%tv(2))
 select type(p=>d(2)%tw(2)%tv)
   type is(tte)
     allocate(p(2)%ttez(2),source='12')
 end select
 v=t1e([-1_8,-1_8],[-2_8,-2_8])
 allocate(d(2)%tw(2)%tv(2)%z3,source=v)   
 kk=kk+1
 allocate(d(2)%tyy(2))                       
 call set_t3(d(2)%tyy,kk)
end
recursive subroutine reset_t3(d,kk)
type(t3)::d(:)
 if (kk>10) return
 select type (p=> d(2)%tw(2)%tv(2)%z3)
   type is(t1e)
      p(1)%z1=10
      p(1)%z2=11
      p(2)%z1=10
      p(2)%z2=11
 end select
 select type(p=>d(2)%tw)
   type is(t4e)
     p(2)%t4ez='ab'
 end select
 select type(p=>d(2)%tw(2)%tv)
   type is(tte)
     p(2)%ttez='ab'
 end select
 kk=kk+1
 call reset_t3(d(2)%tyy,kk)
end
recursive subroutine chk_t3(d,kk)
type(t3)::d(:)
 if (kk>10) return
 select type (p=> d(2)%tw(2)%tv(2)%z3)
   type is(t1e)
         if (any(p(1)%z1/=-1)) print *,'2101',kk,p(1)%z1
         if (any(p(1)%z2/=-2)) print *,'2102',kk,p(1)%z2
         if (any(p(2)%z1/=-1)) print *,'2001',kk,p(2)%z1
         if (any(p(2)%z2/=-2)) print *,'2002',kk,p(2)%z2
 end select
 select type(p=>d(2)%tw)
   type is(t4e)
     if (p(2)%t4ez(2)/='12') print *,2003
 end select
 select type(p=>d(2)%tw(2)%tv)
   type is(tte)
     if (p(2)%ttez(2)/='12') print *,2004
 end select
 kk=kk+1
 call chk_t3(d(2)%tyy,kk)
end
end
     subroutine s1
use m1
     allocate(t3::a1(2))                       
     kk=1
select type(a1)
 type is(t3)
     call set_t3(a1,kk)
     select type (d=>a1(2)%tw(2)%tv(2)%z3)
       type is (t1e)
         if (any(d(1)%z1/=-1)) print *,'1011',d(1)%z1
         if (any(d(1)%z2/=-2)) print *,'1012',d(1)%z2
         if (any(d(2)%z1/=-1)) print *,'1001',d(2)%z1
         if (any(d(2)%z2/=-2)) print *,'1002',d(2)%z2
     end select
     end select
     a2=a1
     kk=1
select type(a1)
 type is(t3)
     call reset_t3(a1,kk)
     end select
     kk=1
select type(a2)
 type is(t3)
     call chk_t3(a2,kk)
     end select
     end
     call s1
     print *,'sngg872p : pass'
     end

