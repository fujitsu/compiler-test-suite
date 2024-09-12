      integer*2 i2x01,i2x02
      real*8  rxx01
      complex*8  c4x01
      complex*16 c8x01
      logical*1 l1x01,l1x02,lstf2
      logical*4 l4x01,l4x02,l4x03,l4m01(4),l4p01,l4p02,lstf1
      parameter(l4p01=.true. ,l4p02=.false.)
      real*4 cerr4t(2),cdif4t(2),cjst4t(2),ccom4t(2),cexp4t(2)
      real*8  cerr8t(2),cdif8t(2),cjst8t(2),ccom8t(2),cexp8t(2)
      equivalence (cerr4,cerr4t),(cerr8,cerr8t),
     *            (cdif4t,cdif4),(cdif8t,cdif8),
     *            (ccom4t,ccom4),(ccom8t,ccom8),
     *            (cexp4t,cexp4),(cexp8t,cexp8)
      complex*8     cerr4,cdif4,ccom4,cexp4
      complex*16    cerr8,cdif8,ccom8,cexp8
      real*8        rerr8,rcom8,rexp8,rjst8,rdif8,r8x01
      real*8        rerrx,rcomx,rexpx,rjstx,rdifx
      logical*4     lexp,lcom
      character*50  hcom,hexp
      lstf1(l4x01) = .not.l4x01
      lstf2(l1x01) = .true..or..not.l1x01
      write(6,'(1h1,///,5x,9hfortran77,3x,9h*FORTRAN*,3x,5henter,/)')
      item = 1
      iero = 0
   01 if(.true.) then
      i2x01 = 1
      goto 30
      endif
      i2x01 = i2x01 + 1
   30 continue
      icom = i2x01
      iexp = 1
      goto 7100
   02 if(l4p01) then
        if(l4p01.and..true.) then
        i2x01 = 1
        endif
      endif
      icom = i2x01
      iexp = 1
      goto 7100
   03 l4x01 = .true.
      i2x02 = 10
      if(l4x01) then
        if(.not..false.) then
          if(10.eq.i2x02) then
          i2x01 = 1
          goto 31
          endif
        endif
      endif
      i2x01 = i2x01 + 1
   31 icom = i2x01
      iexp = 1
      goto 7100
   04 l4m01(1) = .true.
      if(l4m01(1)) then
      r4x01 = -1.1e+1
      goto 32
      endif
      r4x01 = r4x01*10.0
   32 rcom4 = r4x01
      rexp4 = -1.1e+1
      goto 7200
   05 l4x02 = .false.
      if(lstf1(l4x02)) then
        if(l4x02.neqv..true.) then
        r8x01 = -2.115d-1
        endif
        r8x01 = r8x01 * 10.0d+0
      endif
      rcom8 = r8x01
      rexp8 = -2.115d+0
      goto 7300
   06 i2x02 = 1246
      if(i2x02.eq.1246) then
      i2x02 = i2x02 + 1
        if( i2x02*100/100 .eq. 1247) then
        i2x02 = i2x02 - 1
          if(i2x02.gt.1000) then
            if(i2x02.lt.2000) then
            i2x02 = i2x02 - 46
            endif
            i2x02 = i2x02 - 200
          endif
          i2x02 = i2x02/100
        endif
        i2x02 = i2x02 - 9
      endif
      icom = i2x02
      iexp = 1
      goto 7100
   07 l1x01 = .false.
      rxx01 = 19.424d+5
      if(l1x01.or.(rxx01.gt.-24.4d-1)) then
      c4x01 = (-2.3e+1,1.21e-1)
      goto 33
      else
      c4x01 = c4x01 * 0
      endif
   33 ccom4 = c4x01
      cexp4 = (-2.3e+1,1.21e-1)
      goto 7500
   08 r4x01 = 50.492e+0
      r4x02 = -2.0e+2
      l1x02 = .false.
      if(.not.l1x01) then
      i2x01 = 1
        if(r4x01.gt.r4x02) then
        i2x01 = i2x01 * 10
        l1x01 = .false.
        endif
      endif
      icom = i2x01
      iexp = 10
      goto 7100
   09 l1x01 = .true.
      l1x02 = .not.l1x01
      i2x01 = 15
      if(l1x01.and..true.) then
      c8x01 = (1.1d+0,-1.1d+0)
        if(i2x01.gt.0) then
        c8x01 = c8x01 * 10.0
          if(l1x01.or.l1x02) then
          c8x01 = c8x01 * 10.0d+2
          endif
        endif
        c8x01 = c8x01 * 0.0
      endif
      ccom8 = c8x01
      cexp8 = (0.0,0.0)
      goto 7600
   10 l4m01(3) = .true..or..true.
      l4m01(4) = .true.
      if(l4m01(3).or.l4m01(4)) then
      l4x01 = l4m01(3).neqv.l4m01(4)
      endif
      lcom = l4x01
      lexp = .false.
      goto 7800
   11 l4x01 = .true.
      l4x02 = .false.
      i2x01 = -100
      if(l4x01.or..false..neqv.l4x02) then
      i2x01 = i2x01 * 0
        if((i2x01.eq.-100).or.l4x01) then
        i2x01 = i2x01 + 100
        endif
      endif
      icom = i2x01
      iexp = 100
      goto 7100
   12 l1x01 = .true.
      l4x02 = .false.
      if(l1x01.neqv.l4x02.and.l1x01) then
      i2x01 = 100
        if(i2x01.gt.50) then
        i2x01 = i2x01 - 25
        i2x01 = i2x01 - 25
          if(i2x01.gt.0) then
          i2x01 = i2x01 * 0
          endif
          i2x01 = i2x01 + 10
        endif
      endif
      icom = i2x01
      iexp = 10
      goto 7100
   13 if(.false.) then
      i2x01 = 1
      elseif(.true..or..false..neqv..false.) then
      i2x01 = 100
      endif
      icom = i2x01
      iexp = 100
      goto 7100
   14 i2x01 = 20
      i4x01 = 25
      if(l4p02) then
      i2x02 = 20
      elseif(i2x01.gt.i4x01) then
      i2x01 = 21
      elseif(i2x02.lt.i4x01) then
      i2x02 = i2x01 + i4x01
        if(.not..false.) then
        i2x02 = i2x02 * 10
        endif
      endif
      icom = i2x02
      iexp = 450
      goto 7100
   15 r4x01 = 0.0
      l1x01 = .false.
      if(l1x01) then
      r4x01 = 1.0e+1
      elseif(.false..or.l1x01) then
      r4x01 = r4x01 + 1.0e+1
      else
        if(.true.) then
          if(.not.l1x01) then
            if(l1x01.or..true.) then
            r4x01 =  r4x01 + 3.0e+0
            endif
          endif
      endif
          r4x01 = r4x01 + 3.0e+0
        endif
      r4x01 = r4x01 - 6.0e+0
      rcom4 = r4x01
      rexp4 = 0.0e+0
      goto 7200
   16 i2x01 = 0
      l4m01(1)=.false.
      if(l4m01(1)) then
      i2x01 = i2x01 + 1
        if(l4m01(1).and..true.) then
        i2x01 = i2x01 + 1
        endif
      elseif(l4m01(1).and..true.) then
      i2x01 = i2x01 +2
      elseif(i2x01.eq.0) then
      i2x01 = i2x01 + 10
      endif
      icom = i2x01
      iexp = 10
      goto 7100
   17 i2x01 = 0
      l1x02 = .false..or..true.
      if(.not.lstf2(l1x02)) then
        if(.true..or..false.) then
        i2x01 = i2x01 + 100
        endif
      elseif(.not.l1x02) then
      i2x01 = i2x01 + 1000
      else
      i2x01 = i2x01 + 500
      endif
      icom = i2x01
      iexp = 500
      goto 7100
   18 i2x01 = 30
      i2x02 = 40
      if(i2x01.gt.i2x02*10) then
      i2x01 = i2x01 + 10
        if(.true.) then
          if(i2x02.lt.i2x01) then
            if(.true..and..false.) then
            i2x01 = i2x01 + 20
            endif
          endif
        endif
      elseif(.false..and.(.not.(i2x01.eq.i2x02))) then
      i2x01 = i2x01 + 30
      else
      i2x01 = i2x01 - 20
        if(i2x01*10.gt.i2x02) then
        i2x01 = i2x01 * 10
        endif
        i2x01 = i2x01 + 100
      endif
      icom = i2x01
      iexp = 200
      goto 7100
   19 l4x01 = .true..or..false.
      l4x02 = .false.
      l4x03 = .false.
      i2x01 = 30
      i4x01 = 40
      if(l4x01.and.(l4x02.neqv.l4x03)) then
      i2x01 = i2x01 + 20
      elseif(i2x01*i4x01.lt.i4x01) then
      i2x01 = i2x01 + 30
      goto 34
      elseif(i4x01/10.gt.i2x01/10) then
      i2x01 = i2x01 + 40
      endif
   34 icom = i2x01
      iexp = 70
      goto 7100
   20 l1x01 = .true.
      l4x01 = .false.
      r4x01 = -0.24e+1
      if(.not.(l1x01.eqv.l4x01)) then
      r4x01 = r4x01 * 10.0e+0
      elseif(.not.(lstf1(l4x01))) then
      r4x01 = r4x01 / 10.0e+0
        if(l1x01.and.l4x01) then
        r4x01 = r4x01 * 0.0
        else
        r4x01 = r4x01 * 10.0e+0
        endif
      r4x01 = r4x01 * 10.0e+0
      endif
      rcom4 = r4x01
      rexp4 = -0.24e+2
      goto 7200
 7100 idif = icom - iexp
      if(idif.ne.0) then
      go to 9100
      endif
      go to 9999
 7200 rdif4 = rcom4 - rexp4
      if(rexp4.ne.0.) then
      rerr4 = abs(rdif4/rexp4)
      endif
      rjst4 = 5.e-6 - rerr4
      if(rjst4.lt.0.0) then
      go to 9200
      endif
      go to 9999
 7300 rdif8 = rcom8 - rexp8
      rerr8 = abs(rdif8/rexp8)
      rjst8 = 5.e-14 - rerr8
      if(rjst8.lt.0.0) then
        go to 9300
      endif
      go to 9999
 7500 do 1111 i=1,2
      cdif4t(i) = ccom4t(i) - cexp4t(i)
      cerr4t(i) = abs(cdif4t(i)/cexp4t(i))
      cjst4t(i) = 5.e-06 - cerr4t(i)
 1111 continue
      do 1112 i=1,2
      if(cjst4t(i).lt .0.0) then
        go to 9500
      endif
 1112 continue
      go to 9999
 7600 do 1113 i=1,2
      cdif8t(i) = ccom8t(i) - cexp8t(i)
      if(cexp8t(i).eq.0.) then
      cerr8t(i)=abs(cdif8t(i))
      else
      cerr8t(i) = abs(cdif8t(i)/cexp8t(i))
      endif
      cjst8t(i) = 5.e-14 - cerr8t(i)
 1113 continue
      do 1114 i=1,2
      if(cjst8t(i).lt.00) then
      goto 9600
      endif
 1114 continue
      goto 9999
 7800 if(lexp.neqv.lcom) then
        go to 9800
      endif
      go to 9999
 9100 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1             13hcomputed   = ,i11,/,25x,
     2             13hexpected   = ,i11)')
     3             item,icom,iexp
      iero = iero+1
      go to 9999
 9200 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1             13hcomputed   = ,e15.8,/,25x,
     2             13hexpected   = ,e15.8,/,25x,
     3             13hdifference = ,e15.8)')
     4             item,rcom4,rexp4,rdif4
      iero = iero + 1
      go to 9999
 9300 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1             13hcomputed   = ,d24.17,/,25x,
     2             13hexpected   = ,d24.17,/,25x,
     3             13hdifference = ,d24.17)')
     4             item,rcom8,rexp8,rdif8
      iero = iero +1
      go to  9999
 9500 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1             13hcomputed   = ,e15.8,5x,e15.8,/,25x,
     2             13hexpected   = ,e15.8,5x,e15.8,/,25x,
     3             13hdifference = ,e15.8,5x,e15.8)')
     4             item,ccom4,cexp4,cdif4
      iero = iero +1
      go to 9999
 9600 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1              13hcomputed   = ,d24.17,5x,d24.17,/,25x,
     1              13hexpected   = ,d24.17,5x,d24.17,/,25x,
     1              13hdifference = ,d24.17,5x,d24.17)')
     1              item,ccom8,cexp8,cdif8
      iero = iero+1
      go to 9999
 9800 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1              13hcomputed   = ,l4,/,25x,
     2              13hexpected   = ,l4)')
     3              item,lcom,lexp
      iero = iero +1
      go to 9999
 9999 item=item+1
      if(item.le.20) then
        go to (01,02,03,04,05,06,07,08,09,10,11,12,13,
     1        14,15,16,17,18,19,20 ) item
      endif
      if(iero.eq.0) then
      write(6,'(///,4x,13htotal item  (,i2,1h),5x,4h*ok*)') item-1
      else
      write(6,'(///,4x,13htotal item  (,i2,1h))') item-1
      endif
      write(6,'(//,5x,9hfortran77,3x,9h*FORTRAN*,3x,4hexit)')
      stop
      end
