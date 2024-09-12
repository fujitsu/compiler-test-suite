     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2(100)
     end type
     type t3
       class(t1),allocatable::y1    
     end type
     type (t3),allocatable::a1,a2(:) 
     type (t2)::v=t2(-1_8,-2_8)
     allocate(a1)                       
     allocate(t2::a1%y1)
     k=0
     select type (d=>a1%y1)
       type is (t2)
         d=v
         if (d%z1/=-1) print *,'NG1',d%z1
         if (d%z2(1)/=-2) print *,'NG2',d%z2(1)
         k=1
     end select
     if (k/=1) print *,900
     if (0==1) a2=a1
     print *,'pass'
     end

