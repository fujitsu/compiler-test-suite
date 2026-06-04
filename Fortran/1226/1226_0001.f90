module m1
     type t1
       integer(8)::z1
     end type
     type tt
       class(t1),allocatable::z3
     end type
     type t4
       integer(8)::dummy
       type(tt)::tv
     end type
     type t3
       integer(8)::dummy
       type(t3),allocatable::tyy
       type(t4)::tw
     end type
     class (* ),allocatable::a1,a2
     type(t1)::v=t1(-1_8)
contains
subroutine set_t3(d,kk)
type(t3)::d
 allocate(d%tw%tv%z3,source=v)
 kk=kk+1
 allocate(d%tyy)
 allocate(d%tyy%tw%tv%z3,source=v)
 kk=kk+1
 allocate(d%tyy%tyy)
end
subroutine reset_t3(d,kk)
type(t3)::d
 select type (p=> d%tw%tv%z3)
   type is(t1)
      p%z1=10
 end select
 kk=kk+1
 select type (p=> d%tyy%tw%tv%z3)
   type is(t1)
      p%z1=10
 end select
end
!recursive subroutine chk_t3(d,kk)
 subroutine chk_t3(d,kk)
type(t3)::d
 select type (p=> d%tw%tv%z3)
   type is(t1)
         if ((p%z1/=-1)) print *,'2001',kk,p%z1
 end select
 kk=kk+1
 select type (q=> d%tyy%tw%tv%z3)
   type is(t1)
         if ((q%z1/=-1)) print *,'2101',kk,q%z1
 end select
end
end
     subroutine s1
use m1
     allocate(t3::a1)
     kk=1
select type(a1)
 type is(t3)
     call set_t3(a1,kk)
     select type (d=>a1%tw%tv%z3)
       type is (t1)
         if ((d%z1/=-1)) print *,'1001',d%z1
     end select
  end select
     allocate(a2,source=a1)
select type(a1)
 type is(t3)
     kk=1
     call reset_t3(a1,kk)
end select
     kk=1
select type(a2)
 type is(t3)
     call chk_t3(a2,kk)
end select
     end
     call s1
     print *,'sngg326t : pass'
     end
