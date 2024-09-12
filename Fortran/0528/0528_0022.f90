     type t1
       integer(8)::z1
     end type
     type,extends(t1)::t2
       integer(8)::z2
     end type
     type t3
       type(t2),allocatable::z3
     end type
     type (t3),allocatable::a1,a2(:)
     allocate(a2(2))
     allocate(a1)
     allocate(a1%z3,source=t2(-1_8,-2_8))
         if ((a1%z3%z1/=-1)) print *,'NG1'
         if ((a1%z3%z2/=-2)) print *,'NG2'
     a2=a1
     print *,'pass'
     end

