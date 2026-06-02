module m1
     type t0
       integer(8)::z0
     end type
     type,extends(t0)::t1
       integer(8)::z1
     end type
     type t3
       integer(8)::dummy
       type(t3),allocatable::tyy
       class(t1),allocatable::r3
     end type
     class (t3),allocatable::a1,a2
     type(t1)::v=t1(0._8,-1_8)
contains
subroutine set_t3(d)
type(t3)::d
 allocate(d%tyy)
 allocate(d%tyy%r3,source=v)
end
subroutine reset_t3(d)
type(t3)::d
 select type (p=> d%tyy%r3)
   type is(t1)
      p%z1=1000
 end select
end
 subroutine chk_t3(d)
type(t3)::d
 select type (r=> d%tyy%r3)
   type is(t1)
         if ((r%z1/=-1)) print *,'2301',r%z1
 end select
end
end
     subroutine s1
use m1
     allocate(t3::a1)
select type(a1)
 type is(t3)
     call set_t3(a1)
     select type (d=>a1%tyy%r3)
       type is (t1)
         if ((d%z1/=-1)) print *,'1001',d%z1
     end select
     allocate(a2,source=a1)
     call reset_t3(a1)
end select
select type(a2)
 type is(t3)
     call chk_t3(a2)
end select
     end
     call s1
     print *,'sngg844s : pass'
     end
