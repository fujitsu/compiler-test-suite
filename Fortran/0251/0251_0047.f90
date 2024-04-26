character(4,kind=4) :: ch = 4_'main'
a: block
 character(4,kind=4) :: ch = 4_'axxx'
 if(ch/=4_'axxx') print*,101,ch
 a1: block
 character(4,kind=4) :: ch = 4_'a1xx'
 if(ch/=4_'a1xx') print*,112
 end block a1

 a2: block
 character(4,kind=4) :: ch = 4_'a2xx'
 if(ch/=4_'a2xx') print*,111
  a21: block
 character(4,kind=4) :: ch = 4_'a21x'
 if(ch/=4_'a21x') print*,110
  end block a21

  a22: block
 character(4,kind=4) :: ch = 4_'a22x'
 if(ch/=4_'a22x') print*,109
  end block a22
 end block a2

 a3: block
 character(4,kind=4) :: ch = 4_'a3xx'
 if(ch/=4_'a3xx') print*,108
 end block a3
end block a

b: block
 character(4,kind=4) :: ch = 4_'bxxx'
 if(ch/=4_'bxxx') print*,107
end block b

c: block
 character(4,kind=4) :: ch = 4_'cxxx'
 if(ch/=4_'cxxx') print*,106
 c1: block
 character(4,kind=4) :: ch = 4_'c1xx'
 if(ch/=4_'c1xx') print*,105
  c11: block
 character(4,kind=4) :: ch = 4_'c11x'
 if(ch/=4_'c11x') print*,104
  end block c11

  c12: block
 character(4,kind=4) :: ch = 4_'c12x'
 if(ch/=4_'c12x') print*,103
  end block c12
 end block c1
end block c

d: block
 character(4,kind=4) :: ch = 4_'dxxx'
 if(ch/=4_'dxxx') print*,102
end block d
 if(ch==4_'main') print*,'pass'
end
