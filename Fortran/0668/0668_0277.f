      real*4 a01(10),a02(10),a03(10)
      real*4 a05(10)
      real*4 b01(10),b02(10)
      real*4 b05(10)
      real*4 c01(10),c02(10),c03(10),c04(10),c05(10)
      real*4 c06(10),c07(10),c08(10),c09(10)
      integer*4 place
      data (a01(i),i=1,10)/10*1.0/
      data (a02(i),i=1,10)/10*2.0/
      data (a03(i),i=1,10)/10*3.0/
      data (a05(i),i=1,10)/10*5.0/
      data (b01(i),i=1,10)/10*1.0/
      data (b02(i),i=1,10)/10*2.0/
      data (b05(i),i=1,10)/10*5.0/

      place=999
      do 2 i=1,10
          c01(i)=a01(i)+b01(i)
          c02(i)=a01(i)+b01(i)
    2 continue
      do 102 i=1,10
          if(c02(i).ne.c01(i)) then
            place=2
            write(6,999) place
            go to 1000
          endif
  102 continue
      do 3 i=1,10
          c03(i)=a02(i)+b02(i)
          b02(i)=c02(i)-c01(i)
          c04(i)=a02(i)+b02(i)
    3 continue
      do 103 i=1,10
          if(c04(i).eq.c03(i)) then
            place=3
            write(6,999) place
            go to 1000
          endif
  103 continue
      do 4 i=1,10
          c05(i)=sin(a03(i))
          c06(i)=cos(a03(i))
          c07(i)=sin(a03(i))
    4 continue
      do 104 i=1,10
          if(c07(i).ne.c05(i)) then
            place=4
            write(6,999) place
            go to 1000
          endif
  104 continue
      do 5 i=1,10
          c05(i)=c01(i)+place
          c06(i)=c02(i)+place
    5 continue
      do 105 i=1,10
          if(c06(i).ne.c05(i)) then
            place=5
            write(6,999) place
            go to 1000
          endif
  105 continue
      do 6 i=1,10
          c07(i)=a05(i)+b05(i)
          c08(i)=a05(i)+b05(i)
          c07(i)=c06(i)-c05(i)
          c09(i)=a05(i)+b05(i)
    6 continue
      do 106 i=1,10
          if(c09(i).ne.c08(i)) then
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
