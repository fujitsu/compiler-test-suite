     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2
     end type
     type t3
       class(t1),allocatable::y1    
     end type
     type (t3),allocatable::a2(:) 
  type wt
     type (t3),allocatable::a1
  end type
   type(wt)::w
     type (t2)::v=t2(-1_8,-2_8)
     allocate(w%a1)                       
     allocate(w%a1%y1,source=v)
     select type (d=>w%a1%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     if (0==1) a2=w%a1
     print *,'pass'
     end

