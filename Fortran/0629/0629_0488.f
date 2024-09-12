      real*8  rarr1(0:0,-10:-1)
      do 104 i1=0,0
      do 104 i2=-10,-1
  104 rarr1(i1,i2) = (i1-i2)*2.50-1
      do 105 i1=0,9
      do 105 i2=0,0
  105 write(unit=6,fmt=1) rarr1(i2,i1-10)
  1   format(f5.1)
      end
