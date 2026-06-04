module m1
     type t3
       integer(8)::dummy
!       type(t3),allocatable::tyy
       integer  ,allocatable::r3
     end type
     class (t3),allocatable::a1
     class (* ),allocatable::a2
end
     subroutine s1
use m1

call s2

select type(a1)
 type is(t3)
     allocate(a2,source=a1)
end select

!  a1%tyy%r3=1000
  a1%r3=1000
k=0
select type(a2)
 type is(t3)
! print '("a2-1%r3:",z16.16)',loc(a2%tyy%r3)
! print '("a2-2%r3:",z16.16)',loc(a2%r3)
! if ((a2%tyy%r3/=-1)) print *,'2301',a2%tyy%r3
 if ((a2%r3/=-1)) print *,'2302',a2%r3
  k=1
end select
if (k/=1) print *,8293
     end
  subroutine s2()
   use m1
     allocate(t3::a1)
! allocate(a1%tyy)
! allocate(a1%tyy%r3,source=-1)
 allocate(a1%r3,source=-1)

! if ((a1%tyy%r3/=-1)) print *,'1001',a1%tyy%r3
 if ((a1%r3/=-1)) print *,'1002',a1%r3
! print '("a1-1%r3:",z16.16)',loc(a1%tyy%r3)
! print '("a1-2%r3:",z16.16)',loc(a1%r3)

  end
     call s1
     print *,'sngg876s : pass'
     end
