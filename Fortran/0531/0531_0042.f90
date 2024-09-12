     type t1   
       complex::z1
     end type
     type,extends(t1)::t2 
       complex::z2
     end type
     type t3
       class(t1),allocatable::y1    
     end type
     type (t3),allocatable::a1,a2(:) 
complex,parameter::c1=(1,2),c2=(3,4)
     type (t2)::v=t2(c1,c2)
     allocate(a1)                       
     allocate(a1%y1,source=v)
     select type (d=>a1%y1)
       type is (t2)
         if ((d%z1/=c1)) print *,'NG1',d%z1
         if ((d%z2/=c2)) print *,'NG2',d%z2
     end select
     if (0==1) a2=a1
     print *,'pass'
     end

