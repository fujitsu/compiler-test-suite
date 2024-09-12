module m1
     type t1   
       integer(8)::z1
     end type
     type,extends(t1)::t2 
       integer(8)::z2(1000)
     end type
     type tt
       class(t1),allocatable::y1    
     end type
     type t3
       class (tt),allocatable::w1    
     end type
end
use m1
interface
      subroutine alc(a1)
      use m1
     type (t3),allocatable::a1 
      end
end interface
     type (t3),allocatable::a1,a2(:) 
     type (t2)::v=t2(-1_8,-2_8)
     allocate(a1)                       
     call alc(a1)
     allocate(a1%w1%y1,source=v)
     select type (d=>a1%w1%y1)
       type is (t2)
         if ((d%z1/=-1)) print *,'NG1',d%z1
         if (any(d%z2/=-2)) print *,'NG2',d%z2
     end select
     if (0==1) a2=a1
     print *,'pass'
      end
      subroutine alc(a1)
      use m1
     type (t3),allocatable::a1 
     allocate(a1%w1)                       
     end

