     subroutine s1
     type t1
       integer(8)::z1
     end type
     type,extends(t1)::t2
       integer(8)::z2
     end type
     type t3
       class(t1),allocatable::z3
     end type
     type (t3),allocatable::a1,a2(:)
     allocate(a2(2))
     allocate(a1)
     allocate(a1%z3,source=t2(-1_8,-2_8))
     select type (d=>a1%z3)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     a2=a1
     end
     call s1
     print *,'pass'
     end

