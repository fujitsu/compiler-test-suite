
program xxx
  character(kind=1,len=10),target :: ss = 1_'abcdefghij'
  type ty1
     character(kind=1,len=10),pointer :: ps1 => ss
     character(kind=1,len=10),pointer :: ps2 => ss(1:10)
     character(kind=1,len= 2),pointer :: ps3 => ss(2:3)
     character(kind=1,len= 5),pointer :: ps4 => ss(5:9)
     character(kind=1,len= :),pointer :: pn1 => ss
     character(kind=1,len= :),pointer :: pn2 => ss(1:10)
     character(kind=1,len= :),pointer :: pn3 => ss(2:3)
     character(kind=1,len= :),pointer :: pn4 => ss(5:9)
  end type ty1
  type(ty1)::str
  
  print *, ss
  print *, "----------"
  print *, str%ps1
  print *, str%ps2
  print *, str%ps3
  print *, str%ps4
  print *, "----------"
  print *, str%pn1
  print *, str%pn2
  print *, str%pn3
  print *, str%pn4
  print *, "----------"
end program xxx
