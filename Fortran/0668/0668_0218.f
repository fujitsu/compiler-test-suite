      program main
      real*4 s1,s2,s3,s4,s5,s6,s7,s8,s9,
     #  ar1(100),ar2(100),ar3(100),ar4(100)
      call init(s1,s2,s3,s4,s5,s6,s7,s8,s9,
     #          ar1,ar2,ar3,ar4)
      do 20 i=2,100
        s1 = ar1(i-1)
        ar1(i) = s1 * ar2(i) + ar3(i)
   20 continue
        s1=0.0
      do 30 i=2,100
        s1= ar1(i-1)
        ar1(i) = s1 * ar2(i) + ar3(i)
        ar4(i) = s1
   30 continue
        s1=0.0
      do 40 i=2,100
        s2 = ar1(i-1)
        ar1(i) = s2 * ar2(i) + ar3(i)
   40 continue
        write(6,*) ' s2= ',s2
      do 50 i=2,100
        s2= ar1(i-1)
        ar1(i) = s2 * ar2(i) + ar3(i)
        ar4(i) = s2
   50 continue
        write(6,*) ' s2= ',s2
        write(6,*) ' ar= ',ar1,ar4
        stop
        end
      subroutine init(s1,s2,s3,s4,s5,s6,s7,s8,s9,
     #                ar1,ar2,ar3,ar4)
      real*4 s1,s2,s3,s4,s5,s6,s7,s8,s9,
     #       ar1(100),ar2(100),ar3(100),ar4(100)
      s1=1.0
      s2=1.0
      s3=1.0
      s4=1.0
      s5=1.0
      s6=1.0
      s7=1.0
      s8=1.0
      s9=1.0
      do 10 i=1,100
        ar1(i)=1.0
        ar2(i)=1.0
        ar3(i)=1.0
   10   ar4(i)=1.0
      return
      end
