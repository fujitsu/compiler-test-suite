program main
  integer(kind=2),target::t1=5
  integer(kind=2),target::t2=10
  integer(kind=2),pointer::p1
  common /abc/ t1,t2
  common /def/ p1

  print *,t1,t2
  print *,p1
  call subA
end program main

subroutine subA
  integer(kind=2),target::t1,t2
  integer(kind=2),pointer::sp
  integer(kind=2),target::sc=333
  common /abc/ t1,t2
  common /def/ sp

  data sp /sc/

  print *,t1,t2,sc
  print *,sp
end subroutine subA
