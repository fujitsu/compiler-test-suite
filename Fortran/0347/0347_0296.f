      common /blk1/  a1(10),a2(10)
      equivalence (a1(1),a3(1))
      common /blk2/ ch1,ch2
      character*1 ch1,ch2,ch3
      equivalence (ch1,ch3)
      real*4   r1(10),r2(10),r3(10),a3(10)
      equivalence (r1(1),r3(1))
      data  r2,r3/10*2.,10*3./
      do 10 i=1,10
        a1(i)=a1(i)+a2(i)
 10   continue
      do 20 i=1,10
        r1(i)=r1(i)+r2(i)
 20   continue
      ch1='a'
      ch2='='
      write(6,*) ch1,ch2,a1,r1
      stop
      end
      blockdata init
      common /blk1/  a1(10),a2(10)
      data  a1,a2/10*1.,10*1.1/
      end
