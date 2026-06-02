module m1
     type t3
       integer(8)::du
       type(t3),allocatable::tyy
     end type
     class (* ),allocatable::a1,a2
contains
subroutine set_t3(d)
type(t3)::d
 allocate(d%tyy)
 d%tyy%du=1
 !print '("00:",z16.16)',loc(d%tyy%du)
end
subroutine reset_t3(d)
type(t3)::d
 d%tyy%du=100001
end
 subroutine chk_t3(d)
type(t3)::d
 if (d%tyy%du/=1) print *,9876,d%tyy%du
 !print '("33:",z16.16)',loc(d%tyy%du)
end
end
     subroutine s1
use m1
     allocate(t3::a1)
select type(a1)
 type is(t3)
     call set_t3(a1)
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
     !print *,'sngg838s : pass'
     print *,'sngg328t : pass'
     end
