     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2
     end type
     type t3
       class(t1),allocatable::y1    
     end type
     type (t3),allocatable::a1,a2(:) 
     type (t1)::v=t1(-1_8)
     allocate(a1)                       
     allocate(a1%y1,source=v)
     k=0
     select type (d=>a1%y1)
       type is (t1)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         k=1
     end select
     if (0==1) a2=a1
     if (k/=1) print *,20001
     print *,'pass'
     end

