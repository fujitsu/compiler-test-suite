 PROGRAM MAIN
  integer,pointer::ptr1
  integer,pointer::ptr
  integer,target::t1 =30
  COMMON /C1/ t1,ptr
 !$OMP threadprivate(/C1/)
  data ptr1 /t1/
  data ptr /NULL()/
 if(ptr1.ne.30)print*,"101"
 print*,"PASS"
       END

 

