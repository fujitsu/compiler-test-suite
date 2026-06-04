module m1
     type t0
       integer(8)::z1
     end type
     type,extends( t0 )::t1
       integer(8),allocatable::z2
     end type
     class (* ),allocatable::a1,a2
end
     subroutine s1
use m1
     allocate(t1::a1)
select type(a1)
 type is(t1)
 allocate(a1%z2,source=1_8)
end select

     allocate(a2,source=a1)

select type(a1)
 type is(t1)
  a1%z2=1000
end select
select type(a2)
 type is(t1)
 if ((a2%z2/=1)) print *,'2301',a2%z2
end select
     end
     call s1
     print *,'sngg848s : pass'
     end
