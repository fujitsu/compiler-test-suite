module m1
     type t1
       integer(8)::z1
     end type
     type t3
       integer(8)::dummy
       class(t1),allocatable::r3
     end type
     type t2
       integer(8)::dummy2
       type(t3),allocatable::tyy
     end type
     class (* ),allocatable::a1,a2
     type(t1)::v=t1(-1_8)
contains
subroutine set_t3(d,kk)
type(t2)::d
 kk=kk+1
 allocate(d%tyy)
 allocate(d%tyy%r3,source=v)
 kk=kk+1
end
subroutine reset_t3(d,kk)
type(t2)::d
 select type (p=> d%tyy%r3)
   type is(t1)
      p%z1=1000
 end select
end
 subroutine chk_t3(d,kk)
type(t2)::d
 select type (r=> d%tyy%r3)
   type is(t1)
         if ((r%z1/=-1)) print *,'2301',kk,r%z1
 end select
end
end
     subroutine s1
use m1
     allocate(t2::a1)
     kk=1
select type(a1)
 type is(t2)
     call set_t3(a1,kk)
     select type (d=>a1%tyy%r3)
       type is (t1)
         if ((d%z1/=-1)) print *,'1001',d%z1
     end select
     allocate(a2,source=a1)
     kk=1
     call reset_t3(a1,kk)
end select
     kk=1
select type(a2)
 type is(t2)
     call chk_t3(a2,kk)
end select
     end
     call s1
     print *,'sngg841s : pass'
     end
