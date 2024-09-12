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
     type (t2)::v=t2(-1_8,-2_8)
     type (t2),allocatable::w2
     allocate(a1)                       
     allocate(a1%y1,w2,source=v)
     select type (d=>a1%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     if (0==1) a2=a1
         if ((w2%z1/=-1)) print *,'NG3',w2%z1
         if ((w2%z2/=-2)) print *,'NG4',w2%z2
     print *,'pass'
     end

