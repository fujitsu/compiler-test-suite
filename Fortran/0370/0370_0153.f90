  block data
     common /abc/ t1,t2
     common /def/ p1,p2
     integer,target::t1=5
     integer,target::t2=6
     integer,pointer::p1=>t1
     integer,pointer::p2=>t2
  end block data

  program main
    common /abc/ t1,t2
    common /def/ p1,p2
    integer,target::t1,t2
    integer,pointer::p1,p2
    
    print *,t1,t2
    print *,p1,p2
  end program main

