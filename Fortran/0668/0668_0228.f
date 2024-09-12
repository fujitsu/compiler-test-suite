      real * 4 r1(10),r2(10),r3(10),r4(10),r5(10),r6(10,10,10)
      data n/10/
      do 99 i=1,10
        r1(i) = 1.
        r2(i) = r1(i) + 1.
        r3(i) = r2(i) + 1.
        r4(i) = 0.
        r5(i) = r4(i) + r3(i) + r2(i)
 99   continue
      do 98 i=1,10
        do 98 j=1,10
          do 98 k=1,10
            r6(i,j,k) = r1(i) + r2(j) + r3(k)
 98   continue
      do 100 i1=1,n
        r1(i1) = i1
        r2(i1) = r1(i1) + i1
        do 101 i2=1,n
          r3(i2) = r1(i1) + i2
          r4(i2) = r2(i1) + r4(i2)
          do 102 i3=1,n
            r5(i3) = r1(i1)+r2(i1)+r3(i2)+r4(i2)
            r6(i1,i2,i3) = r5(i3)+i3+r1(i1)+i1
102       continue
101     continue
100   continue
      write(6,*) '+++ test no. 1 +++'
      write(6,*) r1,r2,r3,r4,r5,r6
      do 200 i1=1,n
        do 201 i2=1,n
          do 202 i3=1,n
            r1(i3)=r2(i3)+i1
            r2(i3)=r3(i2)+r4(i2)
            r6(i1,i2,i3)=r1(i3)+r2(i3)+i1
202       continue
          r3(i2)=1. + i2
          r4(i2)=r3(i2) + 1.
201     continue
        r5(i1)=1.
200   continue
      write(6,*) '+++++ test no. 2 +++++'
      write(6,*) r1,r2,r3,r4,r5,r6
      do 300 i1=1,n
        r1(i1) = 1.
        r2(i1) = r1(i1) + i1
        do 301 i2=1,n
          r3(i2)=r1(i1) + i2
          r4(i2)=r2(i1)+r3(i2)
          do 302 i3=1,n
            r5(i3)=r1(i1)+r2(i1)+i3
            r6(i1,i2,i3)=r3(i2)+r1(i1)
302       continue
          r3(i2)=r1(i1)+r2(i1)
301     continue
        r1(i1)=r1(i1)+i1
        r2(i1)=r2(i1)+r1(i1)
300   continue
      write(6,*) '+++++ test no. 3 +++++'
      write(6,*) r1,r2,r3,r4,r5,r6
      do 400 i1=1,n
        do 401 i2=1,n
          r1(i2)=i1+i2
          r2(i2)=r1(i2)+r1(i2)
          do 402 i3=1,n
            r3(i2)=r3(i2)+i3
            r6(i1,i2,i3)=r1(i2)+1.
 402      continue
 401    continue
 400  continue
      write(6,*) '+++++ test no. 4 +++++'
      write(6,*) r1,r2,r3,r4,r5,r6
      stop
      end
