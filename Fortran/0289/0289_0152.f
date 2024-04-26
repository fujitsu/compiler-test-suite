      program main
        integer      i,j,k,l,m
        complex     acmp4(10),bcmp4(10)
        complex*8    acmp8(10),bcmp8(10)
        complex*16   acmp16(10),bcmp16(10)
        complex*16   acmp32(10,10),bcmp32(10,10)
        data    acmp4/10*(1.0,1.0)/
        data    acmp8/10*(2.0,0.0)/
        data    acmp16/10*(3.0,1.0)/
        data    acmp32/100*(0.0,0.0)/
        data    bcmp32/2*(0.0,0.0),(-2.0,0.0),7*(0.0,0.0),
     1                 (-2.0,0.0),(0.0,0.0),8*(-2.0,0.0),
     1                 2*(0.0,0.0),(-4.0,0.0),7*(0.0,0.0),
     1                 2*(0.0,0.0),(-2.0,0.0),7*(0.0,0.0),
     1                 2*(0.0,0.0),(-2.0,0.0),7*(0.0,0.0),
     1                 2*(0.0,0.0),(-2.0,0.0),7*(0.0,0.0),
     1                 2*(0.0,0.0),(-2.0,0.0),7*(0.0,0.0),
     1                 2*(0.0,0.0),(-2.0,0.0),7*(0.0,0.0),
     1                 9*(3.0,1.0),(-2.75,1.25),
     1                 2*(0.0,0.0),(-2.0,0.0),7*(0.0,0.0)/
        do 100 i=1,10,1
          bcmp4(i)=acmp4(i)
  100   continue
        do 110 i=1,5,2
          do 120 j=1,10
            bcmp8(i)=bcmp4(i)+acmp8(j)
  120     continue
          bcmp8(i)=acmp8(i*2)
  110   continue
        do 220 j=1,10,1
          acmp4(j)=acmp4(j)/4
          do 230 k=1,10,1
            acmp8(j)=acmp4(k)+1.0
            do 240 l=1,10,1
              bcmp8(j)=acmp8(k)-acmp8(l)+2.0
              do 250 m=1,10,1
                bcmp16(j)=acmp16(k)+acmp16(l)-acmp16(m)+1.0
  250         continue
              acmp8(j)=acmp4(k)+acmp32(1,l)-2.0
  240       continue
            bcmp16(j)=acmp16(k)+abs(-3.00)
  230     continue
          do 260 i=1,10,1
            acmp16(j)=acmp16(i)+int(-1.59)
            do 270 m=1,10,1
              acmp32(j,2)=acmp32(4,m)-acmp32(m,5)-2
  270       continue
            bcmp4(j)=acmp4(i)
            do 280 k=1,10,1
              acmp4(j)=acmp8(i)+acmp4(k)
  280       continue
            acmp32(j,j)=acmp32(j,8)
            do 290 l=1,10,1
              acmp32(3,l)=acmp32(l,5)-2.0
  290       continue
            acmp4(j)=acmp8(i)/4
  260     continue
          bcmp8(j)=acmp16(j)*3
          do 200 i=1,10,1
            acmp4(j)=acmp8(i)-2
            do 210 m=1,10,1
              acmp32(m,9)=acmp16(m)+acmp4(m)+1
  210       continue
  200     continue
  220   continue
        write(6,*) ' '
        write(6,*) ' #### start  #### '
        do 600 i=1,10,1
        do 600 j=1,10,1
          if (bcmp32(i,j) .ne. acmp32(i,j)) goto 601
  600   continue
        write(6,*) ' **** ok **** '
        goto 602
  601   write(6,*) ' .... ng ??? .... '
        write(6,*) ' <<<< true      result    >>>> '
        write(6,*) bcmp32
        write(6,*) ' <<<< execution result    >>>> '
        write(6,*) acmp32

  602   write(6,*) ' #### end    #### '
        stop

      end
