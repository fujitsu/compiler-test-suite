
  character(kind=1,len=3),target :: sa(3)
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
  type ty2
     type(ty1) :: ss(3)
  end type ty2
  type(ty2)::str

  sa = (/1_'xyz', 1_'opq', 1_'lmn'/)
  
  print *, sa
  print *, "----------"
  print *, str%ss(1)%p1
  print *, str%ss(1)%p2
  print *, str%ss(2)%p3
  print *, str%ss(2)%p4
  print *, str%ss(2)%pa1
  print *, str%ss(3)%pa2
  print *, str%ss(3)%pa3
  print *, str%ss(1)%pa4
  print *, "----------"
  print *, str%ss(1)%pn1
  print *, str%ss(1)%pn2
  print *, str%ss(2)%pn3
  print *, str%ss(2)%pn4
  print *, str%ss(2)%pna1
  print *, str%ss(3)%pna2
  print *, str%ss(3)%pna3
  print *, str%ss(1)%pna4
  print *, "----------"
end program
