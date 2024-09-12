      program main
      implicit integer*4(i-n),real*8(a-h,o-z)
      dimension ar1(100),ar2(100),ar3(100),ar4(100),
     =          ar5(100),ar6(100),ar7(100),ar8(100),
     =          ar9(100),ara(100),arb(100),arc(100),
     =          ard(100),are(100),arf(100)
      dimension op3(100),op4(100),op5(100)
      common /ar/ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ara,
     =           arb,arc,ard,are,arf,op3,op4,op5
      common /si/s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,
     =           sb,sc,sd,se,sf,op3rc,op4rc
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
        arb(i) = arb(i-1) / op3(i) + op4(i)
        arc(i) = arc(i-1) / op3(i) - op4(i)
        ard(i) = ard(i-1) / op3(i)
        are(i) = are(i-1) / (-op3(i))
        arf(i) =-arf(i-1) / op3(i)
        csum = csum + abs(ar1(i)) + abs(ar2(i)) + abs(ar3(i))
     @              + abs(ar5(i)) + abs(ar6(i)) + abs(ar7(i))
     @              + abs(ar8(i)) + abs(ar9(i)) + abs(ara(i))
     @              + abs(arb(i)) + abs(arc(i)) + abs(ard(i))
     @              + abs(are(i)) + abs(arf(i))
   10 continue
      write(6,*) ' pat.1 csum= ',csum
      call init
      csum=0
      ar1(1)=100
      ar2(1)=1
      do 20 i=2,100
        ar1(i) = (ar1(i-1) / op3(i)) + op4(i)
        ar2(i) =  op3(i)   / ar2(i-1)
        csum = csum + abs(ar1(i)) + abs(ar2(i))
   20 continue
      write(6,*) ' pat.2 csum= ',csum
      call init
      csum=0
      are(1) = 1
      arf(1) = 1
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
        arb(i) = arb(i-1) / op3rc + op4rc
        arc(i) = arc(i-1) / op3rc - op4rc
        ard(i) = ard(i-1) / op3rc
        are(i) = are(i-1) / (-op3rc)
        arf(i) = - arf(i-1) / op3rc
        csum = csum + abs(ar1(i)) + abs(ar2(i)) + abs(ar3(i))
     @              + abs(ar5(i)) + abs(ar6(i)) + abs(ar7(i))
     @              + abs(ar8(i)) + abs(ar9(i)) + abs(ara(i))
     @              + abs(arb(i)) + abs(arc(i)) + abs(ard(i))
     @              + abs(are(i)) + abs(arf(i))
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
        arb(i) = arb(i-1) / op3(i) + op4rc
        arc(i) = arc(i-1) / op3rc  - op4(i)
        csum = csum + abs(ar1(i)) + abs(ar2(i)) + abs(ar3(i))
     @              + abs(ar5(i)) + abs(ar6(i)) + abs(ar7(i))
     @              + abs(ar8(i)) + abs(ar9(i)) + abs(ara(i))
     @              + abs(arb(i)) + abs(arc(i))
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
        sb = sb / op3(i) + op4(i)
        arb(i) = sb
        sc = sc / op3(i) - op4(i)
        arc(i) = sc
        sd = sd / op3(i)
        ard(i) = sd
        se = se / (-op3(i))
        are(i) = se
        sf =-sf / op3(i)
        arf(i) = sf
   50 continue
      do 51 i=1,100
        s3 =-s3 * op3(i) - op4(i)
        s8 =-s8 * (-op3(i)) - op4(i)
   51 continue
      csum = abs(s1) + abs(s2) + abs(s3) + abs(s4)
     @     + abs(s5) + abs(s6) + abs(s7) + abs(s8)
     @     + abs(s9) + abs(sa) + abs(sb) + abs(sc)
     @     + abs(sd) + abs(se) + abs(sf)
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
        sb = sb / op3(i) + op4(i)
        sc = sc / op3(i) - op4(i)
        sd = sd / op3(i)
        se = se / (-op3(i))
        sf =-sf / op3(i)
   60 continue
      csum = abs(s1) + abs(s2) + abs(s3) + abs(s4)
     @     + abs(s5) + abs(s6) + abs(s7) + abs(s8)
     @     + abs(s9) + abs(sa) + abs(sb) + abs(sc)
     @     + abs(sd) + abs(se) + abs(sf)
      write(6,*) ' pat.6 csum= ',csum
      call init
      csum=0
      s1=0.5
      do 70 i=1,100
        s1 = op3(i) / s1
        csum = csum + abs(s1)
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
        arb(2) = arb(2) / op3(i) + op4(i)
        arc(2) = arc(2) / op3(i) - op4(i)
        ard(2) = ard(2) / op3(i)
        are(2) = are(2) / (-op3(i))
        arf(2) =-arf(2) / op3(i)
   80 continue
        csum = csum + abs(ar1(2)) + abs(ar2(2)) + abs(ar3(2))
     @              + abs(ar5(2)) + abs(ar6(2)) + abs(ar7(2))
     @              + abs(ar8(2)) + abs(ar9(2)) + abs(ara(2))
     @              + abs(arb(2)) + abs(arc(2)) + abs(ard(2))
     @              + abs(are(2)) + abs(arf(2))
      write(6,*) ' pat.8 csum= ',csum
      call init
      csum=0
      do 90 i=2,100
        ar1(3) = ar1(3) * op3rc + op4rc
        ar2(3) = ar2(3) * op3rc - op4rc
        ar3(3) = ar3(3) * op3rc
        ar4(3) = ar4(3) + op4rc
        ar5(3) = ar5(3) - op4rc
        ar6(3) = (ar6(3) + op4rc) * op3rc
        ar7(3) =(-ar7(3) + op4rc) * op3rc
        ar8(3) = (ar8(3) - op4rc) * op3rc
        ar9(3) =-ar9(3) * (-op3rc) - op4rc
        ara(3) =-ara(3) * (-op3rc) + op4rc
        arb(3) = arb(3) / op3(i) + op4(i)
        arc(3) = arc(3) / op3(i) - op4(i)
        ard(3) = ard(3) / op3(i)
        are(3) = are(3) / (-op3(i))
        arf(3) =-arf(3) / op3(i)
   90 continue
        csum = csum + abs(ar1(3)) + abs(ar2(3)) + abs(ar3(3))
     @              + abs(ar5(3)) + abs(ar6(3)) + abs(ar7(3))
     @              + abs(ar8(3)) + abs(ar9(3)) + abs(ara(3))
     @              + abs(arb(3)) + abs(arc(3)) + abs(ard(3))
     @              + abs(are(3)) + abs(arf(3))
      write(6,*) ' pat.9 csum= ',csum
      call init
      csum=0
      ar1(4)=0.5
      do 100 i=2,100
        ar1(4) = op3(i) / ar1(4)
        csum = csum + abs(ar1(4))
  100 continue
      write(6,*) ' pat.10 csum= ',csum
      stop
      end
      subroutine init
      implicit integer*4(i-n),real*8(a-h,o-z)
      dimension ar1(100),ar2(100),ar3(100),ar4(100),
     =          ar5(100),ar6(100),ar7(100),ar8(100),
     =          ar9(100),ara(100),arb(100),arc(100),
     =          ard(100),are(100),arf(100)
      dimension op3(100),op4(100),op5(100)
      common /ar/ar1,ar2,ar3,ar4,ar5,ar6,ar7,ar8,ar9,ara,
     =           arb,arc,ard,are,arf,op3,op4,op5
      common /si/s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,
     =           sb,sc,sd,se,sf,op3rc,op4rc
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
        arb(i)=0
        arc(i)=0
        ard(i)=0
        are(i)=0
        arf(i)=0
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
        sb=0
        sc=0
        sd=0
        se=0
        sf=0
        op3rc=1
        op4rc=1
      return
      end
