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
     class (tt3),allocatable::a1,a2(:) 
     type (t2)::v=t2(-1_8,-2_8)
     type (t3)::v3
     v3=t3(t1(-1_8),-2_8)
     allocate(a1,source=v3)                       
     deallocate(a1%y1)
     allocate(a1%y1,source=v)
     select type (d=>a1%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     if (0==1) a2=a1
     print *,'pass'
     end

