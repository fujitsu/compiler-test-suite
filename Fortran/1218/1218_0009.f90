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
end
     subroutine s1
use m1
     allocate(t3::a1)
select type(a1)
 type is(t3)
 allocate(a1%tyy)
 allocate(a1%tyy%r3,source=v)

 if ((a1%tyy%r3%z1/=-1)) print *,'1001',a1%tyy%r3%z1
 !print '("a1%r3:",z16.16)',loc(a1%tyy%r3)

end select
     allocate(a2,source=a1)

select type(a1)
 type is(t3)
  a1%tyy%r3%z1=1000
end select
select type(a2)
 type is(t3)
 !print '("a2%r3:",z16.16)',loc(a2%tyy%r3)
 if ((a2%tyy%r3%z1/=-1)) print *,'2301',a2%tyy%r3%z1
end select
     end
     call s1
     print *,'sngg847s : pass'
     end
