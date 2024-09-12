
program main
  integer(kind=2),target::t1=5
  integer(kind=2),target::t2=6
  integer(kind=2),pointer::p1=>t1
  integer(kind=2),pointer::p2=>t2
  integer(kind=2),pointer::p3=>t1
  integer(kind=2),pointer::p4=>t2
  integer(kind=2),pointer::p5=>t2

  common /abc/ t1,t2
  common /def/ p1
  common /ghi/ p3,p4
  common /def/ p5
  
  print *,t1,t2
  print *,p1,p2
  print *,p3,p4
  print *,p5
end program main

