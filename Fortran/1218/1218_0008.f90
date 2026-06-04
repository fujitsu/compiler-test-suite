module m1
     type t1
       integer(8)::z1
     end type
     type t3
       integer(8)::dummy
       type(t3),allocatable::tyy
       type (t1),allocatable::r3
     end type
     class (* ),allocatable::a1,a2
     type(t1)::v=t1(-1_8)
contains
subroutine set_t3(d)
type(t3)::d
 allocate(d%tyy)
 allocate(d%tyy%r3,source=v)
end
subroutine reset_t3(d)
type(t3)::d
      d%tyy%r3%z1=1000
end
 subroutine chk_t3(d)
type(t3)::d
         if ((d%tyy%r3%z1/=-1)) print *,'2301',d%tyy%r3%z1
end
end
     subroutine s1
use m1
     allocate(t3::a1)
select type(a1)
 type is(t3)
     call set_t3(a1)
         if ((a1%tyy%r3%z1/=-1)) print *,'1001',a1%tyy%r3%z1
end select
     allocate(a2,source=a1)
select type(a1)
 type is(t3)
     call reset_t3(a1)
end select
select type(a2)
 type is(t3)
     call chk_t3(a2)
end select
     end
     call s1
     print *,'sngg846s : pass'
     end
