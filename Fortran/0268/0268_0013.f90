     integer v(5)
     real B(2,2)
     integer,pointer::ptr
     integer,target::t1=30
      data v/10,20,30,40,50/, B/1.0,-3.7,4.3,0.0/ ptr/t1/
     if(ptr.ne.30)print*,"101"
     if(any(v.ne.[10,20,30,40,50]))print*,"102"
     if(any(B.ne.reshape([1.0,-3.7,4.3,0.0],[2,2])))print*,"102"
     print*,"PASS"
     end
