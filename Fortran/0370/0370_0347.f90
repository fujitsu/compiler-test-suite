
program xxx
  character(kind=1,len=10),target :: ss = 1_'abcdefghij'
  character(kind=1,len=10),pointer :: ps1
  character(kind=1,len=10),pointer :: ps2
  character(kind=1,len= 2),pointer :: ps3
  character(kind=1,len= 5),pointer :: ps4
  character(kind=1,len= :),pointer :: pn1
  character(kind=1,len= :),pointer :: pn2
  character(kind=1,len= :),pointer :: pn3
  character(kind=1,len= :),pointer :: pn4

  data ps1 /ss/
  data ps2 /ss(1:10)/
  data ps3 /ss(2:3)/
  data ps4 /ss(5:9)/
  data pn1 /ss/
  data pn2 /ss(1:10)/
  data pn3 /ss(2:3)/
  data pn4 /ss(5:9)/
  
  print *, ss
  print *, "----------"
  print *, ps1
  print *, ps2
  print *, ps3
  print *, ps4
  print *, "----------"
  print *, pn1
  print *, pn2
  print *, pn3
  print *, pn4
  print *, "----------"  
end program
