     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2
     end type
     type t3
       class(t1),allocatable::y1    
     end type
     type (t3),allocatable::a1,a2(:),a3,a4
     type (t2)::v=t2(-1_8,-2_8)
     allocate(a3,a1,a4)                       
     allocate(a1%y1,a3%y1,a4%y1,source=v)
     select type (d=>a1%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     select type (d=>a3%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG11',d%z1
         if ((d%z2/=-2)) print *,'NG12',d%z2
     end select
     select type (d=>a4%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG21',d%z1
         if ((d%z2/=-2)) print *,'NG22',d%z2
     end select
     if (0==1) a2=a1
     if (0==1) a2=a3
     if (0==1) a2=a4
     print *,'pass'
     end

