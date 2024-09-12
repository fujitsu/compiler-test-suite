      program main
      integer*4 i4ar1(100),i4ar2(100),i4ar3(100),i4ar4(100),i4ar5(100),
     =          i4op3(100),i4op4(100),i4s1,i4s2,i4s3,i4s5,i4s6,i4sum
      real*4    r4ar1(100),r4ar2(100),r4ar3(100),r4ar4(100),r4ar5(100),
     =          r4op3(100),r4op4(100),r4s1,r4s2,r4s3,r4s5,r4s6,r4sum
      real*8    r8ar1(100),r8ar2(100),r8ar3(100),r8ar4(100),r8ar5(100),
     =          r8op3(100),r8op4(100),r8s1,r8s2,r8s3,r8s5,r8s6,r8sum
      common /int/i4ar1,i4ar2,i4ar3,i4ar4,i4ar5,i4op3,i4op4,
     =            i4s1,i4s2,i4s3,i4s5,i4s6
      common /re4/r4ar1,r4ar2,r4ar3,r4ar4,r4ar5,r4op3,r4op4,
     =            r4s1,r4s2,r4s3,r4s5,r4s6
      common /re8/r8ar1,r8ar2,r8ar3,r8ar4,r8ar5,r8op3,r8op4,
     =            r8s1,r8s2,r8s3,r8s5,r8s6
      call init
      r4sum = 0
      do 10 i=2,100
        r4s1     = r4s1 * i4op3(i) + i4op4(i)
        r4ar3(i) = r4s1
        r4ar1(i) = r4ar1(i-1) * i4op3(i) + i4op4(i)
        r4ar2(1) = r4ar2(1)   + i4op3(i)
        r4sum = r4sum +  r4ar1(i) + r4ar2(2) + r4ar3(i)
   10 continue
      write(6,*) 'i4->r4        convert. csum= ',r4sum
      r8sum = 0
      do 20 i=2,100
        r8s1     = r8s1 * i4op3(i) + i4op4(i)
        r8ar3(i) = r8s1
        r8ar1(i) = r8ar1(i-1) * i4op3(i) + i4op4(i)
        r8ar2(1) = r8ar2(1)   + i4op3(i)
        r8sum = r8sum +  r8ar1(i) + r8ar2(2) + r8ar3(i)
   20 continue
      write(6,*) 'i4->r8        convert. csum= ',r8sum
      i4sum = 0
      do 30 i=2,100
        i4s1     = i4s1 + r4op3(i)
        i4ar1(i) = i4ar1(i-1) * r4op3(i) + r4op4(i)
        i4ar2(i) = i4ar2(i-1) * r8op3(i) + r8op4(i)
        i4ar3(i) = i4ar3(i-1) * r4op3(i) - r8op4(i)
        i4s2     = i4s2 * r8op3(i)
        i4sum    = i4s1 + i4s2 +
     @             i4ar1(i) + i4ar2(i) + i4ar3(i)
   30 continue
      write(6,*) 'real-type->i4 convert. csum= ',i4sum
      call init
      r8sum = 0
      do 40 i=2,100
        r8s1     = r8s1 * r4op3(i) + r4op4(i)
        r8ar3(i) = r8s1
        r8ar1(i) = r8ar1(i-1) * r4op3(i) + r4op4(i)
        r8ar2(1) = r8ar2(1)   + r4op3(i)
        r8sum = r8sum +  r8ar1(i) + r8ar2(2) + r8ar3(i)
   40 continue
      write(6,*) 'r4->r8        convert. csum= ',r8sum
      r4sum = 0
      do 50 i=2,100
        r4s1     = r4s1 * r8op3(i) + r8op4(i)
        r4ar3(i) = r4s1
        r4ar2(1) = r4ar2(1)   + r8op3(i)
        r4sum = r4sum +  r4ar2(1) + r4ar3(i)
   50 continue
      write(6,*) 'r8->r4 pat.1  convert. csum= ',r4sum
      r4sum = 0
      do 60 i=2,100
        r4ar1(i) = r4ar1(i-1) * r8op3(i) + r8op4(i)
        r4sum = r4sum +  r4ar1(i)
   60 continue
      write(6,*) 'r8->r4 pat.2  convert. csum= ',r4sum
      stop
      end
      subroutine init
      integer*4 i4ar1(100),i4ar2(100),i4ar3(100),i4ar4(100),i4ar5(100),
     =          i4op3(100),i4op4(100),i4s1,i4s2,i4s3,i4s5,i4s6
      real*4    r4ar1(100),r4ar2(100),r4ar3(100),r4ar4(100),r4ar5(100),
     =          r4op3(100),r4op4(100),r4s1,r4s2,r4s3,r4s5,r4s6
      real*8    r8ar1(100),r8ar2(100),r8ar3(100),r8ar4(100),r8ar5(100),
     =          r8op3(100),r8op4(100),r8s1,r8s2,r8s3,r8s5,r8s6
      common /int/i4ar1,i4ar2,i4ar3,i4ar4,i4ar5,i4op3,i4op4,
     =            i4s1,i4s2,i4s3,i4s5,i4s6
      common /re4/r4ar1,r4ar2,r4ar3,r4ar4,r4ar5,r4op3,r4op4,
     =            r4s1,r4s2,r4s3,r4s5,r4s6
      common /re8/r8ar1,r8ar2,r8ar3,r8ar4,r8ar5,r8op3,r8op4,
     =            r8s1,r8s2,r8s3,r8s5,r8s6
      do 10 i=1,100
        i4ar1(i) = 0
        i4ar2(i) = 0
        i4ar3(i) = 0
        i4ar4(i) = 0
        i4ar5(i) = 0
        r4ar1(i) = 0.0
        r4ar2(i) = 0.0
        r4ar3(i) = 0.0
        r4ar4(i) = 0.0
        r4ar5(i) = 0.0
        r8ar1(i) = 0.0d0
        r8ar2(i) = 0.0d0
        r8ar3(i) = 0.0d0
        r8ar4(i) = 0.0d0
        r8ar5(i) = 0.0d0
        i4op3(i) = 1
        i4op4(i) = 1
        r4op3(i) = 1.0
        r4op4(i) = 1.0
        r8op3(i) = 1.0d0
        r8op4(i) = 1.0d0
   10 continue
        i4s1 = 0
        i4s2 = 0
        i4s3 = 0
        i4s4 = 0
        i4s5 = 0
        r4s1 = 0
        r4s2 = 0
        r4s3 = 0
        r4s4 = 0
        r4s5 = 0
        r8s1 = 0
        r8s2 = 0
        r8s3 = 0
        r8s4 = 0
        r8s5 = 0
      return
      end
