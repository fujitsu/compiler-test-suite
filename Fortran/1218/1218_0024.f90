module m1
     type t3
       integer(8)::dummy
       type(t3),allocatable::tyy
       integer  ,allocatable::r3
     end type
     class (* ),allocatable::a1,a2
end
     subroutine s1
use m1
     allocate(t3::a1)
select type(a1)
 type is(t3)
 allocate(a1%tyy)
 allocate(a1%tyy%r3,source=-1)

 if ((a1%tyy%r3/=-1)) print *,'1001',a1%tyy%r3
 !print '("a1%r3:",z16.16)',loc(a1%tyy%r3)

end select
     allocate(a2,source=a1)

select type(a1)
 type is(t3)
  a1%tyy%r3=1000
end select
select type(a2)
 type is(t3)
 !print '("a2%r3:",z16.16)',loc(a2%tyy%r3)
 if ((a2%tyy%r3/=-1)) print *,'2301',a2%tyy%r3
end select
     end
     call s1
     print *,'sngg864s : pass'
     end
