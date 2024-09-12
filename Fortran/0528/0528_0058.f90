     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2(100)
     end type
     type t3
       class(* ),allocatable::y1 ,y2
     end type
     type (t3),allocatable::a1,a2(:) 
     type (t2)::v=t2(-1_8,-2_8)
     integer, allocatable::x(:)
     allocate(a1)                       
     allocate(t2::a1%y1,a1%y2)
     allocate(x(2))
     x=1
     k=0
     select type (d=>a1%y1)
       type is (t2)
         d=v
         if (d%z1/=-1) print *,'NG1',d%z1
         if (d%z2(1)/=-2) print *,'NG2',d%z2(1)
         k=1
         if (any(x/=1)) print *,800,x
     end select
     if (k/=1) print *,900
     k=0
     select type (d=>a1%y2)
       type is (t2)
         d=v
         if (d%z1/=-1) print *,'NG11',d%z1
         if (any(d%z2/=-2)) print *,'NG12',d%z2
         k=1
         if (any(x/=1)) print *,801,x
     end select
     if (k/=1) print *,901
     if (0==1) a2=a1
     print *,'pass'
     end

