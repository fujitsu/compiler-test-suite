   module m1
     type t1                
       integer(8)::z1
       character(:),allocatable::zx
     end type
     type,extends(t1)::t2  
       integer(8)::z2
       character(:),allocatable::zy
     end type
     type tt
       class(t1),allocatable::z3   
     end type
     type t4
       integer(8)::dummy
       type(tt)::tv
     end type
     type t3
       integer(8)::dummy
       class(t3),allocatable::tyy
       type(t4)::tw
       character(:),allocatable::zw
     end type
     type,extends(t3)::t3e
       character(:),allocatable::zz
     end type
      
     class (t3),allocatable::a1,a2     
contains
     subroutine s1
     allocate(a2)                       
     allocate(a1,source=a2)   
     end
     end
     use m1
     call s1
     print *,'sngg847p : pass'
     end

