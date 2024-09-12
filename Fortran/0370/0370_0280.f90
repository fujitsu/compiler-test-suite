
  character(kind=1,len=3),target :: sa(3) = (/1_'xyz', 1_'opq', 1_'lmn'/)
  type ty1
     character(kind=1,len=3),pointer :: p1(:) => sa
     character(kind=1,len=3),pointer :: p2 => sa(2)
     character(kind=1,len=2),pointer :: p3 => sa(2)(2:3)
     character(kind=1,len=3),pointer :: p4 => sa(3)(1:3)
     character(kind=1,len=2),pointer :: pa1(:) => sa(1:2)(1:2)
     character(kind=1,len=2),pointer :: pa2(:) => sa(2:3)(2:3)
     character(kind=1,len=2),pointer :: pa3(:) => sa(3:2:-1)(2:3)
     character(kind=1,len=2),pointer :: pa4(:) => sa(1:3:2)(2:3)
     character(kind=1,len=:),pointer :: pn1(:) => sa
     character(kind=1,len=:),pointer :: pn2 => sa(2)
     character(kind=1,len=:),pointer :: pn3 => sa(2)(2:3)
     character(kind=1,len=:),pointer :: pn4 => sa(3)(1:3)
     character(kind=1,len=:),pointer :: pna1(:) => sa(1:2)(1:2)
     character(kind=1,len=:),pointer :: pna2(:) => sa(2:3)(2:3)
     character(kind=1,len=:),pointer :: pna3(:) => sa(3:2:-1)(2:3)
     character(kind=1,len=:),pointer :: pna4(:) => sa(1:3:2)(2:3)
  end type ty1
  type(ty1)::str
  
  print *, sa
  print *, "----------"
  print *, str%p1
  print *, str%p2
  print *, str%p3
  print *, str%p4
  print *, str%pa1
  print *, str%pa2
  print *, str%pa3
  print *, str%pa4
  print *, "----------"
  print *, str%pn1
  print *, str%pn2
  print *, str%pn3
  print *, str%pn4
  print *, str%pna1
  print *, str%pna2
  print *, str%pna3
  print *, str%pna4
  print *, "----------"  
end program
