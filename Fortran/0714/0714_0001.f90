  integer,target::t1=5
  integer,target::t2=6
  integer,target::t3=7
  integer,pointer::p1=>t1
  integer,pointer::p2=>t2
  integer,pointer::p3
  integer,pointer::p4
  data p3 /t2/
  data p4 /t3/
  common /abc/ p1,p2
  common /abc/ p3,p4

  print *,t1,t2,t3
  print *,p1,p2
  print *,p3,p4
end program
