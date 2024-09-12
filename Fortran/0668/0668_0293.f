      program main
      real*4     r1(100),r2(100),r3(10,10),r4(10,10)
      integer*4  i100(100),i10(10)
      do 1  i=1,100
      i100(i)=i
      r1(i)=3
1     r2(i)=4
      do 2  j=1,10
      do 2  i=1,10
      i10(i)=i
      r3(i,j)=1
2     r4(i,j)=2
      do 10 i=1,10
      r1(i)=r2(i)
10    r3(i,1)=r4(i,2)
      do 20 i=1,10
      r2(i)=r2(i)+r2(100)
20    r3(i,4)=r4(i,5)+r1(i)
      do 30 i=1,10
      i100(i)=r2(i)
30    r3(i,5)=i10(i)
      do 40 i=1,10
      r3(1,i)=abs(r4(2,i))
40    r1(1)=r1(1)+r2(i)
      write(6,*) r1,r2,r3,r4,i100,i10
      stop
      end
