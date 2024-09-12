   module m1
     type t1                
       integer(8)::z1
     end type
     type,extends(t1)::t2  
       integer(8)::z2
     end type
     type tt
       class(t1),allocatable::y1   
     end type
     type t3
       integer(8)::dummy
       type(tt)::tv
     end type
     type(t2)::v=t2(-1_8,-2_8)
     type (t3),allocatable::a2(:)     
   end
     subroutine s1
use m1
     type (t3),allocatable::a1     
     allocate(a1)                       
     allocate(a1%tv%y1,source=v)   
     select type (d=>a1%tv%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
     if (1==0) then
     a2=a1
     end if
     end
     call s1
     print *,'pass'
     end

