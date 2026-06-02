     subroutine s1
     type t1                
       integer(8)::z1
     end type
     type,extends(t1)::t2  
       integer(8)::z2
     end type
     type t3
       integer(8)::dummy
       type(t3),allocatable::tyy(:)
     end type
     type (t3),allocatable::a1(:),a2(:)     
     type(t2)::v=t2(-1_8,-2_8)
     allocate(a2(2))                       
     allocate(a1(2))                       
     a2=a1
     end
     call s1
     print *,'sngg117r : pass'
     end

