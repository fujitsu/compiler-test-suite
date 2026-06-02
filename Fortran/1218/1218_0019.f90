module m1
     type t3
       integer(8)::dummy
     end type
     type,extends(t3):: t3e
       integer(8)::d
       integer  ,allocatable::r4
     end type
     class (t3),allocatable::a1
     class (* ),allocatable::a2
end
     subroutine s1
use m1
     allocate(t3e::a1)
select type(a1)
 type is(t3e)
 allocate(a1%r4,source=1)
end select

     allocate(a2,source=a1)

select type(a1)
 type is(t3e)
  a1%r4=1000
end select
k=0
select type(a2)
 type is(t3e)
 k=1
 if ((a2%r4/=1)) print *,'2304',a2%r4
end select
if (k/=1) print *,2893
     end
     call s1
     print *,'sngg859s : pass'
     end
