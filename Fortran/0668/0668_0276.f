      real*4 a01(100),a02(100),a03(100),a04(100),a05(100)
      real*4 a06(100),a07(100),a08(100),a09(100),a10(100)
      real*4 b01(100),b02(100),b03(100),b04(100),b05(100)
      real*4 b06(100),b07(100),b08(100),b09(100),b10(100)
      real*4 c01(100),c02(100),c03(100),c04(100),c05(100)
      real*4 c06(100),c07(100),c08(100),c09(100),c10(100)
      integer*4 place
      place=0
      do 1 i=1,100
          a01(i)=1.0
          a02(i)=a01(i)+1.0
          a03(i)=a02(i)+1.0
          a04(i)=a03(i)+1.0
          a05(i)=a04(i)+1.0
          a06(i)=a05(i)+1.0
          a07(i)=a06(i)+1.0
          a08(i)=a07(i)+1.0
          a09(i)=a08(i)+1.0
          a10(i)=a09(i)+1.0
          b01(i)=a01(i)
          b02(i)=b01(i)+1.0
          b03(i)=b02(i)+1.0
          b04(i)=b03(i)+1.0
          b05(i)=b04(i)+1.0
          b06(i)=b05(i)+1.0
          b07(i)=b06(i)+1.0
          b08(i)=b07(i)+1.0
          b09(i)=b08(i)+1.0
          b10(i)=b09(i)+1.0
    1 continue
      do 2 i=1,100
          c01(i)=a01(i)+b01(i)
          c02(i)=a01(i)+b01(i)
    2 continue
      do 102 i=1,100
          if(c02(i).ne.c01(i)) then
            place=2
            write(6,999) place
            go to 1000
          endif
  102 continue
      do 3 i=1,100
          c03(i)=a02(i)+b02(i)
          b02(i)=c02(i)-c01(i)
          c04(i)=a02(i)+b02(i)
    3 continue
      do 103 i=1,100
          if(c04(i).eq.c03(i)) then
            place=3
            write(6,999) place
            go to 1000
          endif
  103 continue
      do 4 i=1,100
          c05(i)=sin(a03(i))
          c06(i)=cos(a03(i))
          c07(i)=sin(a03(i))
    4 continue
      do 104 i=1,100
          if(c07(i).ne.c05(i)) then
            place=4
            write(6,999) place
            go to 1000
          endif
  104 continue
      do 5 i=1,100
          c01(i)=c01(i)+place
          c02(i)=c02(i)+place
    5 continue
      do 105 i=1,100
          if(c02(i).ne.c01(i)) then
            place=5
            write(6,999) place
            go to 1000
          endif
  105 continue
      do 6 i=1,100
          c08(i)=a05(i)+b05(i)
          c09(i)=a05(i)+b05(i)
          c08(i)=c07(i)-c06(i)
          c10(i)=a05(i)+b05(i)
    6 continue
      do 106 i=1,100
          if(c10(i).ne.c09(i)) then
            place=6
            write(6,999) place
            go to 1000
          endif
  106 continue
      write(6,*) 'ok ok ok ok ok ok'
      go to 1000
  999 format('**** error at ',i2,'th loop ***')
 1000 continue
      stop
      end
