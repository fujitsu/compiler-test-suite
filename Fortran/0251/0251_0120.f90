character(4) :: ch = 'main'
a: block
 character(4) :: ch = 'axxx'
 if(ch/='axxx') print*,101
 a1: block
 character(4) :: ch = 'a1xx'
 if(ch/='a1xx') print*,112
 end block a1

 a2: block
 character(4) :: ch = 'a2xx'
 if(ch/='a2xx') print*,111
  a21: block
 character(4) :: ch = 'a21x'
 if(ch/='a21x') print*,110
  end block a21

  a22: block
 character(4) :: ch = 'a22x'
 if(ch/='a22x') print*,109
  end block a22
 end block a2

 a3: block
 character(4) :: ch = 'a3xx'
 if(ch/='a3xx') print*,108
 end block a3
end block a

b: block
 character(4) :: ch = 'bxxx'
 if(ch/='bxxx') print*,107
end block b

c: block
 character(4) :: ch = 'cxxx'
 if(ch/='cxxx') print*,106
 c1: block
 character(4) :: ch = 'c1xx'
 if(ch/='c1xx') print*,105
  c11: block
 character(4) :: ch = 'c11x'
 if(ch/='c11x') print*,104
  end block c11

  c12: block
 character(4) :: ch = 'c12x'
 if(ch/='c12x') print*,103
  end block c12
 end block c1
end block c

d: block
 character(4) :: ch = 'dxxx'
 if(ch/='dxxx') print*,102
end block d
 if(ch=='main') print*,'pass'
end
