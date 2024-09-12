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
     type (t3),pointer   ::a3,a4 
     type (t2)::v=t2(-1_8,-2_8)
     type (t2),allocatable::w1,w2
     allocate(a1,a3,a4)                       
     allocate(a3%y1,w1,a1%y1,w2,a4%y1,source=v)
     k=0
     select type (d=>a1%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
          k=1
     end select
     if (k/=1)print *,2000
     k=0
     select type (d=>a3%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
          k=1
     end select
     if (k/=1)print *,2000
     k=0
     select type (d=>a4%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
          k=1
     end select
     if (k/=1)print *,2000
     if (0==1) a2=a1
         if ((w1%z1/=-1)) print *,'NG3',w1%z1
         if ((w1%z2/=-2)) print *,'NG4',w1%z2
         if ((w2%z1/=-1)) print *,'NG3',w2%z1
         if ((w2%z2/=-2)) print *,'NG4',w2%z2
     print *,'pass'
     end

