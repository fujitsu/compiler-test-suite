      logical*4 l4p01,l4p02,l4p03,l4p04,l4m01(4),lstf1,
     c          l4x01,l4x02,l4x03
      parameter(l4p01=.false.,l4p02=.true.,l4p03=.true..and..false.,
     *          l4p04=.false..or..true.)
      real*8 r8x01,r8x02
      real*8  rxx01,rxx02
      integer*2 i2x01,i2x02,i2x03,i2x04
      lstf1(l4x01,l4x02) = .true..eqv.l4x01.and..not.l4x02
      write(6,'(1h1,///,5x,9hfortran77,3x,9h*FORTRAN*,3x,5henter,/)')
      item = 1
      iero = 0
      l4m01(1) = .true.
      l4m01(2) = .false.
      l4m01(3) = .true..eqv..false.
      l4m01(4) = .true..and..false.
      l4x01 = .true.
      l4x02 = .false.
      l4x03 = .true.
      r4x01 = 15.2e+0
      r4x02 = 28.469e+0
      r4x03 = -25e+03
      r4x04 = -37.4
      r4x05 = 0.0
      r8x01 = 4.5d+2
      r8x02 = -2.3d+0
      rxx01 = 4.24d+3
      rxx02 = -8.2d+1
      i2x01 = 42
      i2x02 = 5849
      i2x03 = -14
      i2x04 = 0
   01 i4x01 = 0
      if(l4x01.and.(l4x02.neqv..false.)) then
        if(.true.) then
        i4x01 = i4x01 + 1
        if(.true..and.l4x02) then
      i4x01 = i4x01 + 2
        endif
        endif
      elseif(.not.l4m01(2)) then
        if(.false..and.l4m01(1)) then
        i4x01 = i4x01 + 3
        elseif(l4m01(1).eqv.l4m01(1)) then
        i4x01 = i4x01 + 4
        endif
      i4x01 = i4x01 + 5
      endif
      icom = i4x01
      iexp = 9
      goto 7100
   02 i4x01 = 1
      if(l4m01(2).or..false.) then
      i4x01 = i4x01 + 0
        if(l4m01(2).eqv..true.) then
        i4x01 = i4x01 + 1
        else
        i4x01 = i4x01 + 2
        endif
      elseif(l4x01) then
      i4x01 = i4x01 + 3
      endif
      icom = i4x01
      iexp = 4
      goto 7100
   03 i4x02 = 0
      if(l4m01(3).eqv..true.) then
      i4x02 = i4x02 + 1
      elseif(l4p01) then
      i4x02 = i4x02 + 2
      elseif(l4p01.eqv..true.) then
      i4x02 = i4x02 + 3
      else
        if(r4x02/r4x01.gt.50.0e+02) then
        i4x02 = i4x02 + 4
        else
        i4x02 = i4x02 + 5
        goto 30
        endif
        i4x02 = i4x02 + 6
      endif
   30 icom = i4x02
      iexp = 5
      goto 7100
   04 i4x01 = 0
      if(l4m01(3).eqv.l4x03) then
      i4x01 = i4x01 + 1
      elseif(.false.) then
        if(l4x01.and.l4x02) then
          if(r4x01.gt.r4x05) then
            if(i2x01.lt.i2x04) then
            i4x01 = i4x01 + 2
            endif
          endif
        endif
      elseif(l4m01(4).and.l4x03) then
      i4x01 = i4x01 + 3
      elseif(i2x01.gt.rxx01) then
      i4x01 = i4x01 + 4
      else
        if(l4x03.eqv.l4x02) then
        i4x01 = i4x01 + 5
        else
        i4x01 = i4x01 + 6
        endif
      endif
      icom = i4x01
      iexp = 6
      goto 7100
   05 i4x01 = 0
      if(.false.) then
      i4x01 = i4x01 + 1
      goto 31
      elseif(l4p04) then
        if(r4x01*0.0.gt.r4x05) then
        i4x01 = i4x01 + 2
        elseif(r4x04+r4x01.gt.r4x04) then
        i4x01 = i4x01 + 3
        endif
      endif
   31 icom = i4x01
      iexp = 3
      goto 7100
   06 i4x01 = 0
      if(l4p03) then
      i4x01 = i4x01 + 1
      elseif(l4x02) then
      i4x01 = i4x01 + 2
      goto 32
      else
        if(l4m01(1).or.l4p02) then
        i4x01 = i4x01 + 3
        endif
      endif
   32 icom = i4x01
      iexp = 3
      goto 7100
   07 i4x01 = 0
      if(l4x02) then
        if(i2x01.gt.i2x04*i2x03-1) then
        i4x01 = i4x01 + 1
        endif
      elseif(l4m01(1)) then
        if(l4x03.eqv.l4m01(2)) then
        i4x01 = i4x01 + 2
        else
          if(r4x01.gt.r4x02*5.0) then
          i4x01 = i4x01 + 3
          else
          i4x01 = i4x01 + 4
          endif
        endif
        i4x01 = i4x01 + 1
      endif
      icom = i4x01
      iexp = 5
      goto 7100
   08 i4x01 = 0
      if(l4m01(4)) then
      i4x01 = i4x01 + 1
        if(r8x02.gt.r8x01) then
        i4x01 = i4x01 + 2
        endif
      elseif(lstf1(l4x01,l4x01)) then
      i4x01 = i4x01 + 3
      elseif(.false..neqv.l4x01) then
      i4x01 = i4x01 + 4
        if(r4x01.gt.r4x02) then
             i4x01 = i4x01 + 5
             else
             i4x01 = i4x01 + 6
             endif
      endif
      icom = i4x01
      iexp = 10
      goto 7100
   09 i4x01 = 0
      if(lstf1(l4m01(2),l4x02)) then
        if(l4m01(4)) then
       i4x01 = i4x01 + 1
        goto 33
        elseif(i2x04.eq.0) then
        i4x01 = i4x01 + 2
        endif
      elseif(r8x01*r8x01.gt.r8x02) then
        if(i2x04*i2x04.eq.i2x04) then
        endif
        i4x01 = i4x01 + 3
      endif
   33 icom = i4x01
      iexp = 3
      goto 7100
   10 i4x01 = 0
      if(r4x05.gt.r4x01*r4x02) then
        if(l4x01.neqv.l4m01(4)) then
        i4x01 = i4x01 + 1
        else
        if(l4x01.and.l4x02.and.l4x03) then
        i4x01 = i4x01 + 2
        endif
        endif
      elseif(.false..eqv.(l4x01.eqv.l4x02)) then
      i4x01 = i4x01 + 3
      goto 34
      endif
      i4x01 = i4x01 + 1
   34 icom = i4x01
      iexp = 3
      goto 7100
   11 i4x01 = 0
      if(l4x01.and.(l4x02.and.l4x03)) then
        if(.true..and.l4p04) then
        i4x01 = i4x01 + 2
        endif
      elseif(.not.l4x01) then
      i4x01 = i4x01 + 3
      goto 36
      else
        if(l4p04.eqv.l4m01(4)) then
        i4x01 = i4x01 + 4
        else
        i4x01 = i4x01 + 5
        endif
      endif
   36 icom = i4x01
      iexp = 5
      goto 7100
   12 i4x01 = 0
      if(.not.(i2x02*100.gt.i2x04)) then
        if(l4m01(1).and.l4m01(2)) then
        i4x01 = i4x01 + 1
        if(l4x01.or.l4p01.or.l4p02) then
        i4x01  = i4x01 + 2
        elseif(l4x01.neqv.l4p01) then
        i4x01 = i4x01 + 3
        endif
        i4x01 = i4x02 * 2
        endif
      elseif((r4x05*r4x03.eq.r4x05).and.(i2x02+i2x03.gt.i2x02)) then
      i4x01 = i4x01 + 4
      elseif(l4p03) then
      i4x01 = i4x01 + 5
      else
      i4x01 = i4x01 + 6
      endif
      icom = i4x01
      iexp = 6
      goto 7100
   13 if(.true.) then
      i4x01 = 1
      else
      i4x01 = 2
      endif
      icom = i4x01
      iexp = 1
      goto 7100
   14 i4x01 = 0
      if(l4p01) then
      i4x01 = i4x01 + 1
      else
        if(r4x01.eq.r4x05) then
        i4x01 = i4x01 + 2
        goto 37
        elseif(l4m01(4).or.l4x01) then
        i4x01 = i4x01 + 3
        endif
      endif
   37 icom = i4x01
      iexp = 3
      goto 7100
   15 i4x01 = 0
      i4x04=1
      if(l4x02) then
        if(l4p01.and.l4x01)then
        i4x01 = i4x01 + 1
          if(i4x01*i4x04.gt.i4x01) then
          i4x01 = i4x01 + 2
          endif
        endif
      else
        if(l4m01(4).eqv.l4x03) then
        i4x01 = i4x01 + 3
        elseif(r8x01.lt.r8x02) then
        i4x01 = i4x01 + 4
        elseif(l4m01(1).and.l4p02) then
        i4x01 = i4x01 + 5
        endif
      endif
      icom = i4x01
      iexp = 5
      goto 7100
   16 i4x01 = 0
      if(l4m01(2)) then
      i4x01 = i4x01 + 1
      else
        if(i2x02.lt.i2x03) then
      i4x01 = i4x01 + 2
        elseif(l4m01(1).and.l4m01(4)) then
        i4x01 = i4x01 + 3
        elseif(rxx02.gt.rxx02) then
        i4x01 = i4x01 + 4
        elseif(l4m01(4).eqv.l4p01) then
        i4x01 = i4x01 + 5
        endif
      i4x01 = i4x01 + 1
      endif
      icom = i4x01
      iexp = 6
      goto 7100
   17 i4x01 = 0
      if(lstf1(l4x02,l4x03)) then
      i4x01 = i4x01 + 1
      else
        if(r4x05.gt.r4x02) then
        i4x01 = i4x01 + 2
        else
        i4x01 = i4x01 + 3
        endif
      endif
      icom = i4x01
      iexp = 3
      goto 7100
   18 i4x01 = 0
      if(i2x01*i2x02*i2x03.gt.i2x04) then
      i4x01 = i4x01 + 1
      i4x01 = i4x01 * 10
      else
        if(l4m01(4).eqv.l4p01) then
          if(.true.) then
            if(l4p03) then
            i4x01 = i4x01 + 2
            elseif(l4m01(1).and.l4x02) then
            i4x01 = i4x01 + 3
            else
            i4x01 = i4x01 + 4
            endif
           i4x01 = i4x01 + 1
          endif
        endif
      endif
      icom = i4x01
      iexp = 5
      goto 7100
   19 i4x01 = 0
      if(l4x01.eqv.(l4x02.neqv.l4x03).and..false.) then
      else
        if(l4p04.and.(r4x05.gt.r4x01)) then
        i4x01 = i4x01 + 1
        elseif(i2x01.gt.i2x02) then
        i4x01 = i4x01 + 2
        goto 37
        elseif(i2x01*0.gt.i2x02*0) then
        i4x01 = i4x01 + 3
        else
        i4x01 = i4x01 + 4
        endif
      endif
      icom = i4x01
      iexp = 4
      goto 7100
   20 i4x01 = 0
      if(.not.l4x03) then
        if(l4x01) then
        i4x01 = i4x01 + 1
        elseif(l4p01) then
        i4x01 = i4x01 + 2
        elseif(l4p02) then
        i4x01 = i4x01 + 3
        elseif(l4p02) then
        elseif(l4p04) then
        i4x01 = i4x01 + 4
        else
        i4x01 = i4x01 + 5
        endif
      else
        if(l4m01(4).and.l4p02) then
        i4x01 = i4x01 + 6
        else
          if(l4x02) then
          i4x01 = i4x01 + 7
          else
          i4x01 = i4x01 + 8
          i4x01 = i4x01 * 2
          endif
        endif
      endif
      icom = i4x01
      iexp = 16
      goto 7100
 7100 idif = icom - iexp
      if(idif.ne.0) then
      go to 9100
      endif
      go to 9999
 9100 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1             13hcomputed   = ,i11,/,25x,
     2             13hexpected   = ,i11)')
     3             item,icom,iexp
      iero = iero+1
      go to 9999
 9999 item=item+1
      if(item.le.20) then
        go to (01,02,03,04,05,06,07,08,09,10,11,12,13,14,
     1           15,16,17,18,19,20 ) item
      endif
      if(iero.eq.0) then
      write(6,'(///,4x,13htotal item  (,i2,1h),5x,4h*ok*)') item-1
      else
      write(6,'(///,4x,13htotal item  (,i2,1h))') item-1
      endif
      write(6,'(//,5x,9hfortran77,3x,9h*FORTRAN*,3x,4hexit)')
      stop
      end
