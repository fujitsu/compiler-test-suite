      program main
      implicit integer*4(a-z)
      dimension ar1(100),ar2(100),ar3(100),ar4(100),
     =          ar5(100),ar6(100),ar7(100),ar8(100),
     =          ar9(100),ara(100)
      dimension op3(100),op4(100),op5(100)
      common /ar/ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ara,op3,op4,op5
      common /si/s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,op3rc,op4rc
      call init
      csum=0
      do 10 i=2,100
        ar1(i) = ar1(i-1) * op3(i) + op4(i)
        ar2(i) = ar2(i-1) * op3(i) - op4(i)
        ar3(i) = ar3(i-1) * op3(i)
        ar4(i) = ar4(i-1) + op4(i)
        ar5(i) = ar5(i-1) - op4(i)
        ar6(i) = (ar6(i-1) + op4(i)) * op3(i)
        ar7(i) =(-ar7(i-1) + op4(i)) * op3(i)
        ar8(i) = (ar8(i-1) - op4(i)) * op3(i)
        ar9(i) =-ar9(i-1) * (-op3(i)) - op4(i)
        ara(i) =-ara(i-1) * (-op3(i)) + op4(i)
        csum = csum + iabs(ar1(i)) + iabs(ar2(i)) + iabs(ar3(i))
     @              + iabs(ar5(i)) + iabs(ar6(i)) + iabs(ar7(i))
     @              + iabs(ar8(i)) + iabs(ar9(i)) + iabs(ara(i))
   10 continue
      write(6,*) ' pat.1 csum= ',csum
      call init
      csum=0
      ar1(1)=100
      ar2(1)=101
      ar3(1)=100
      ar5(1)=1
      do 20 i=2,100
        ar1(i) = ar1(i-1) / op3(i) + op4(i)
        ar2(i) = ar2(i-1) / op3(i) - op4(i)
        ar3(i) = ar3(i-1) / op3(i)
        ar4(i) = (ar4(i-1) / op3(i)) + op4(i)
        ar5(i) = op3(i) / ar5(i-1)
        csum = csum + iabs(ar1(i)) + iabs(ar2(i)) + iabs(ar3(i))
     @              + iabs(ar4(i)) + iabs(ar5(i))
   20 continue
      write(6,*) ' pat.2 csum= ',csum
      call init
      csum=0
      do 30 i=2,100
        ar1(i) = ar1(i-1) * op3rc + op4rc
        ar2(i) = ar2(i-1) * op3rc  - op4rc
        ar3(i) = ar3(i-1) * op3rc
        ar4(i) = ar4(i-1) + op4rc
        ar5(i) = ar5(i-1) - op4rc
        ar6(i) = (ar6(i-1) + op4rc) * op3rc
        ar7(i) =(-ar7(i-1) + op4rc) * op3rc
        ar8(i) = (ar8(i-1) - op4rc) * op3rc
        ar9(i) =-ar9(i-1) * (-op3rc) - op4rc
        ara(i) =-ara(i-1) * (-op3rc) + op4rc
        csum = csum + iabs(ar1(i)) + iabs(ar2(i)) + iabs(ar3(i))
     @              + iabs(ar5(i)) + iabs(ar6(i)) + iabs(ar7(i))
     @              + iabs(ar8(i)) + iabs(ar9(i)) + iabs(ara(i))
   30 continue
      write(6,*) ' pat.3 csum= ',csum
      call init
      csum=0
      do 40 i=2,100
        ar1(i) = ar1(i-1) * op3rc  + op4(i)
        ar2(i) = ar2(i-1) * op3(i) - op4rc
        ar3(i) = ar3(i-1) * op3rc
        ar4(i) = ar4(i-1) + op4rc
        ar5(i) = ar5(i-1) - op4rc
        ar6(i) = (ar6(i-1) + op4(i)) * op3rc
        ar7(i) =(-ar7(i-1) + op4rc)  * op3(i)
        ar8(i) = (ar8(i-1) - op4(i)) * op3rc
        ar9(i) =-ar9(i-1) * (-op3rc) - op4(i)
        ara(i) =-ara(i-1) * (-op3(i))+ op4rc
        csum = csum + iabs(ar1(i)) + iabs(ar2(i)) + iabs(ar3(i))
     @              + iabs(ar5(i)) + iabs(ar6(i)) + iabs(ar7(i))
     @              + iabs(ar8(i)) + iabs(ar9(i)) + iabs(ara(i))
   40 continue
      write(6,*) ' pat.4 csum= ',csum
      call init
      csum=0
      do 50 i=1,100
        s1 = s1 * op3(i) + op4(i)
        ar1(i) = s1
        s2 = s2 * op3(i) - op4(i)
        ar2(i) = s2
        s4 = s4 * (-op3(i)) + op4(i)
        ar4(i) = s4
        s5 = s5 + op4(i)
        ar5(i) = s5
        s6 = s6 - op4(i)
        ar6(i) = s6
        s7 = s7 * op3(i)
        ar7(i) = s7
        s9 =-s9 * op3(i)
        ar9(i) = s9
        sa = op3(i) - sa
        ara(i) = sa
   50 continue
      do 51 i=1,100
        s3 =-s3 * op3(i) - op4(i)
        s8 =-s8 * (-op3(i)) - op4(i)
   51 continue
      csum = iabs(s1) + iabs(s2) + iabs(s3) + iabs(s4)
     @     + iabs(s5) + iabs(s6) + iabs(s7) + iabs(s8)
     @     + iabs(s9) + iabs(sa)
      write(6,*) ' pat.5 csum= ',csum
      call init
      csum=0
      do 60 i=1,100
        s1 = s1 * op3(i) + op4(i)
        s2 = s2 * op3(i) - op4(i)
        s3 = s3 * op5(i) - op4(i)
        s4 = s4 * (-op3(i)) + op4(i)
        s5 = s5 + op4(i)
        s6 = s6 - op4(i)
        s7 = s7 * op3(i)
        s8 = s8 * (-op3(i)) - op4(i)
        s9 =-s9 * op3(i)
        sa = op3(i) - sa
   60 continue
      csum = iabs(s1) + iabs(s2) + iabs(s3) + iabs(s4)
     @     + iabs(s5) + iabs(s6) + iabs(s7) + iabs(s8)
     @     + iabs(s9) + iabs(sa)
      write(6,*) ' pat.6 csum= ',csum
      call init
      csum=0
      s1=100
      s2=100
      s3=1
      do 70 i=1,100
        s1 = s1 / op3(i) + op4(i)
        s2 = s2 / op3(i) - op4(i)
        s3 = op3(i) / s3
        csum = csum + iabs(s1) + iabs(s2) + iabs(s3)
   70 continue
      write(6,*) ' pat.7 csum= ',csum
      call init
      csum=0
      do 80 i=2,100
        ar1(2) = ar1(2) * op3(i) + op4(i)
        ar2(2) = ar2(2) * op3(i) - op4(i)
        ar3(2) = ar3(2) * op3(i)
        ar4(2) = ar4(2) + op4(i)
        ar5(2) = ar5(2) - op4(i)
        ar6(2) = (ar6(2) + op4(i)) * op3(i)
        ar7(2) =(-ar7(2) + op4(i)) * op3(i)
        ar8(2) = (ar8(2) - op4(i)) * op3(i)
        ar9(2) =-ar9(2) * (-op3(i)) - op4(i)
        ara(2) =-ara(2) * (-op3(i)) + op4(i)
   80 continue
        csum = csum + iabs(ar1(2)) + iabs(ar2(2)) + iabs(ar3(2))
     @              + iabs(ar5(2)) + iabs(ar6(2)) + iabs(ar7(2))
     @              + iabs(ar8(2)) + iabs(ar9(2)) + iabs(ara(2))
      write(6,*) ' pat.8 csum= ',csum
      call init
      csum=0
      do 90 i=2,100
        ar1(3) = ar1(3) * op3rc + op4rc
        ar2(3) = ar2(3) * op3rc  - op4rc
        ar3(3) = ar3(3) * op3rc
        ar4(3) = ar4(3) + op4rc
        ar5(3) = ar5(3) - op4rc
        ar6(3) = (ar6(3) + op4rc) * op3rc
        ar7(3) =(-ar7(3) + op4rc) * op3rc
        ar8(3) = (ar8(3) - op4rc) * op3rc
        ar9(3) =-ar9(3) * (-op3rc) - op4rc
        ara(3) =-ara(3) * (-op3rc) + op4rc
   90 continue
        csum = csum + iabs(ar1(3)) + iabs(ar2(3)) + iabs(ar3(3))
     @              + iabs(ar5(3)) + iabs(ar6(3)) + iabs(ar7(3))
     @              + iabs(ar8(3)) + iabs(ar9(3)) + iabs(ara(3))
      write(6,*) ' pat.9 csum= ',csum
      call init
      csum=0
      ar1(4)=1
      ar2(4)=1
      ar3(4)=1
      ar4(4)=1
      ar5(4)=1
      do 100 i=2,100
        ar1(4) = ar1(4) / op3(i) + op4(i)
        ar2(4) = ar2(4) / op3(i) - op4(i)
        ar3(4) = ar3(4) / op3(i)
        ar4(4) = (ar4(4) / op3(i)) + op4(i)
        ar5(4) = op3(i) / ar5(4)
  100 continue
        csum = csum + iabs(ar1(4)) + iabs(ar2(4)) + iabs(ar3(4))
     @              + iabs(ar4(4)) + iabs(ar5(4))
      write(6,*) ' pat.10 csum= ',csum
      stop
      end
      subroutine init
      implicit integer*4(a-z)
      dimension ar1(100),ar2(100),ar3(100),ar4(100),
     =          ar5(100),ar6(100),ar7(100),ar8(100),
     =          ar9(100),ara(100)
      dimension op3(100),op4(100),op5(100)
      common /ar/ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ara,op3,op4,op5
      common /si/s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,op3rc,op4rc
      do 1 i=1,100
        ar1(i)=0
        ar2(i)=0
        ar3(i)=0
        ar4(i)=0
        ar5(i)=0
        ar6(i)=0
        ar7(i)=0
        ar8(i)=0
        ar9(i)=0
        ara(i)=0
        op3(i)=1
        op4(i)=1
        op5(i)=1
    1 continue
        s1=0
        s1=0
        s2=0
        s3=0
        s4=0
        s5=0
        s6=0
        s7=0
        s8=0
        s9=0
        sa=0
        op3rc=1
        op4rc=1
      return
      end
