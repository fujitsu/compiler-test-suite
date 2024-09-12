     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2(100)=-11
     end type
     type t3
       class(t1),allocatable::y1    
     end type
     type (t3),allocatable::a1,a2(:) 
     type (t2)::v=t2(-1_8,-2_8)
     type (t2),allocatable::w1,w2
     integer, allocatable::x(:)
     allocate(a1)                       
     allocate(t2::w1,a1%y1,w2)
     allocate(x(2))
     x=1
      w1=v
      w2=v
     k=0
     select type (d=>a1%y1)
       type is (t2)
         if (any(d%z2/=-11)) print *,'NG3',d%z2(1)
         d=v
         if (d%z1/=-1) print *,'NG1',d%z1
         if (any(d%z2/=-2)) print *,'NG2',d%z2(1)
         k=1
         if (any(x/=1)) print *,800,x
     end select
     if (k/=1) print *,900
     if (0==1) a2=a1
         if (w1%z1/=-1) print *,'NG3',w1%z1
         if (any(w1%z2/=-2)) print *,'NG4',w1%z2(1)
         if (w2%z1/=-1) print *,'NG5',w2%z1
         if (any(w2%z2/=-2)) print *,'NG6',w2%z2(1)
     print *,'pass'
     end

