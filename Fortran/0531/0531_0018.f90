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
  type x
     type (t3),allocatable::a1
     type (t3),allocatable::a3,a4
  end type
  type(x)::v
     type (t2)::w=t2(-1_8,-2_8)
     allocate(v%a1)                       
     allocate(v%a4)                       
     allocate(v%a3)                       
     allocate(v%a3%y1,source=w)
     allocate(v%a1%y1,source=w)
     allocate(v%a4%y1,source=w)
     select type (d=>v%a1%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     select type (d=>v%a3%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG11',d%z1
         if ((d%z2/=-2)) print *,'NG12',d%z2
     end select
     select type (d=>v%a4%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG21',d%z1
         if ((d%z2/=-2)) print *,'NG22',d%z2
     end select
     if (0==1) a2=v%a1
     if (0==1) a2=v%a3
     if (0==1) a2=v%a4
     print *,'pass'
     end
