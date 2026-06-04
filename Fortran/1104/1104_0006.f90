   module m1
     type t1                
       integer(8)::z1
     end type
     type,extends(t1)::t2  
       integer(8)::z2
     end type
     type tt
       class(t1),allocatable::y1   
       class(t1),allocatable::y2(:)
     end type
     type t0
     end type
     type,extends(t0)::t3
       integer(8)::dummy
       type(tt)::tv
     end type
     class (t0),allocatable::a1,a2(:)     
     type(t2)::v=t2(-1_8,-2_8)
   end
     subroutine s1
use m1
     allocate(t3::a1)                       
select type(a1)
  type is(t3)
     allocate(a1%tv%y1,source=v)   
     select type (d=>a1%tv%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if ((d%z2/=-2)) print *,'NG2',d%z2
     end select
 end select
 allocate(a2(2),source=a1)
   select type (a2)
       type is (t3)
     select type (d=>a2(2)%tv%y1)
       type is (t2)
         d%z1=11
         d%z2=12
     end select
   end select
   select type (a1)
       type is (t3)
     select type (d=>a1%tv%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'60011',d%z1
         if ((d%z2/=-2)) print *,'60012',d%z2
     end select
   end select
     a2=a1
   select type (a2)
       type is (t3)
     select type (d=>a2(2)%tv%y1)
       type is (t2)
         d%z1=11
         d%z2=12
     end select
   end select
   select type (a1)
       type is (t3)
     select type (d=>a1%tv%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'61011',d%z1
         if ((d%z2/=-2)) print *,'61012',d%z2
     end select
   end select
     end
     call s1
     print *,'sngg467p : pass'
     end

