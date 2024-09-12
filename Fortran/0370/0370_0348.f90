
  character(kind=1,len=3),target :: sa(3) = (/1_'xyz', 1_'opq', 1_'lmn'/)
  character(kind=1,len=3),pointer :: p1(:)
  character(kind=1,len=3),pointer :: p2
  character(kind=1,len=2),pointer :: p3
  character(kind=1,len=3),pointer :: p4
  character(kind=1,len=2),pointer :: pa1(:)
  character(kind=1,len=2),pointer :: pa2(:)
  character(kind=1,len=2),pointer :: pa3(:)
  character(kind=1,len=2),pointer :: pa4(:)
  character(kind=1,len=:),pointer :: pn1(:)
  character(kind=1,len=:),pointer :: pn2
  character(kind=1,len=:),pointer :: pn3
  character(kind=1,len=:),pointer :: pn4
  character(kind=1,len=:),pointer :: pna1(:)
  character(kind=1,len=:),pointer :: pna2(:)
  character(kind=1,len=:),pointer :: pna3(:)
  character(kind=1,len=:),pointer :: pna4(:)

  data p1 /sa/
  data p2 /sa(2)/
  data p3 /sa(2)(2:3)/
  data p4 /sa(3)(1:3)/
  data pa1 /sa(1:2)(1:2)/
  data pa2 /sa(2:3)(2:3)/
  data pa3 /sa(3:2:-1)(2:3)/
  data pa4 /sa(1:3:2)(2:3)/
  data pn1 /sa/
  data pn2 /sa(2)/
  data pn3 /sa(2)(2:3)/
  data pn4 /sa(3)(1:3)/
  data pna1 /sa(1:2)(1:2)/
  data pna2 /sa(2:3)(2:3)/
  data pna3 /sa(3:2:-1)(2:3)/
  data pna4 /sa(1:3:2)(2:3)/
  
  print *, sa
  print *, "----------"
  print *, p1
  print *, p2
  print *, p3
  print *, p4
  print *, pa1
  print *, pa2
  print *, pa3
  print *, pa4
  print *, "----------"
  print *, pn1
  print *, pn2
  print *, pn3
  print *, pn4
  print *, pna1
  print *, pna2
  print *, pna3
  print *, pna4
  print *, "----------"
end program
