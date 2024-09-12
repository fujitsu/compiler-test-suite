     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2
     end type
     type tt3
       class(t1),allocatable::y1    
     end type
     type ,extends(tt3)::t3
       integer::xx
     end type
     type ,extends(t3)::t4
       integer::xxx
     end type
     type ,extends(t4)::t5
       integer::xxxx
     end type
     type ,extends(t5)::t6
       integer::xxxaxx
     end type
     class (tt3),allocatable::a1,a2(:),a3,a4
     type (t2)::v=t2(-1_8,-2_8)
     allocate(t4::a1)                       
     allocate(t5::a3)                       
     allocate(t6::a4)                       
     allocate(a4%y1,source=v)
     select type (d=>a1%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     allocate(a1%y1,source=v)
     allocate(a3%y1,source=v)
     select type (d=>a3%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     select type (d=>a4%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     if (0==1) a2=a1
     if (0==1) a2=a3
     if (0==1) a2=a4
     print *,'pass'
     end

