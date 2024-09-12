
program main
  logical(kind=1),target,dimension(4)::a0
  logical(kind=1),pointer,dimension(:)::p0
  logical(kind=1),pointer,dimension(:)::p1
  logical(kind=1),pointer,dimension(:)::p2
  logical(kind=1),pointer,dimension(:)::p3
  logical(kind=1),pointer,dimension(:)::p4

  data a0 /4*.TRUE./
  data p0,p1,p2,p3,p4 /4*a0,a0/
  
  print *,a0
  print *,p0
  print *,p1
  print *,p2
  print *,p3
  print *,p4
end program main
