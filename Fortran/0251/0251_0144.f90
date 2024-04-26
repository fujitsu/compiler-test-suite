call ss(4)

contains
subroutine ss(d)
integer :: d
character(d) :: ch
ch = 'subx'
a: block
 character(d) :: ch
ch = 'axxx'
 if(ch/='axxx') print*,101
 a1: block
 character(d) :: ch
ch = 'a1xx'
 if(ch/='a1xx') print*,112
 end block a1

 a2: block
 character(d) :: ch
ch = 'a2xx'
 if(ch/='a2xx') print*,111
  a21: block
 character(d) :: ch
ch = 'a21x'
 if(ch/='a21x') print*,110
  end block a21

  a22: block
 character(d) :: ch
ch = 'a22x'
 if(ch/='a22x') print*,109
  end block a22
 end block a2

 a3: block
 character(d) :: ch
ch = 'a3xx'
 if(ch/='a3xx') print*,108
 end block a3
end block a

b: block
 character(d) :: ch
ch = 'bxxx'
 if(ch/='bxxx') print*,107
end block b

c: block
 character(d) :: ch
ch = 'cxxx'
 if(ch/='cxxx') print*,106
 c1: block
 character(d) :: ch
ch = 'c1xx'
 if(ch/='c1xx') print*,105
  c11: block
 character(d+d) :: ch
ch = 'c11xxxxx'
 if(ch/='c11xxxxx' .or. len(ch)/=8) print*,104
  end block c11

  c12: block
 character(d) :: ch
ch = 'c12x'
 if(ch/='c12x') print*,103
  end block c12
 end block c1
end block c

 if(ch=='subx') print*,'pass'
end subroutine
end
