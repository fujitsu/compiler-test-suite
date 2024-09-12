     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2
     end type
     type t3
       class(t1),allocatable::y1    
       class(t1),allocatable::y2    
     end type
     type w
       type (t3),allocatable::a1,a2(:) 
     end type
     type(w)::t
     type (t2)::v=t2(-1_8,-2_8)
     class(t2),allocatable::x    
     allocate(t%a1)                       
     allocate(t%a1%y2,t%a1%y1,source=v)
     select type (d=>t%a1%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     select type (d=>t%a1%y2)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG21',d%z1
         if ((d%z2/=-2)) print *,'NG22',d%z2
     end select
     if (0==1) t%a2=t%a1
     print *,'pass'
     end

