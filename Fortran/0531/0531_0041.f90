     type t1   
       character::z1
     end type
     type,extends(t1)::t2 
       character::z2
     end type
     type t3
       class(t1),allocatable::y1    
     end type
     type (t3),allocatable::a1,a2(:) 
     integer,allocatable::z1,z2
     type (t2)::v=t2('1','2')
     allocate(z1,a1,z2)                       
     allocate(a1%y1,source=v)
     select type (d=>a1%y1)
       type is (t2)
         if ((d%z1/='1')) print *,'NG1',d%z1
         if ((d%z2/='2')) print *,'NG2',d%z2
     end select
     if (0==1) a2=a1
     print *,'pass'
     end

