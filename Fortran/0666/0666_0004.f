      character h2x01*2,h2x02*2,h2m01(2)*2,h3m01(2)*3,hstf1*4,
     c          h4x01*4,h4m01(2)*4,h5x01*5,h3x01*3,
     c          h6x01*6,h6p01*6,h7x01*7,h8x01*8,h9x01*9,hax01*10
       character  hcom*4,hexp*4
      parameter(i4p01=-15,h6p01='(i5.4)')
      real*8 r8x01
      integer*2 i2x01,i2x02,istf1
      istf1(i2x01,i2x02) = i2x01 + i2x01
      hstf1(h2x01,h2x02) = h2x01//h2x02
      write(6,'(1h1,///,5x,9hfortran77,3x,9h*fortran*,3x,5henter,/)')
      item = 1
      iero = 0
   01 write(h4x01,601) 24.5
  601 format(f4.1)
      hcom = h4x01
      hexp = '24.5'
      go to 7900
   02 assign 602 to i4x01
      write(h4x01,i4x01) i4p01
  602 format(i4)
      hcom = h4x01
      hexp = ' -15'
      go to 7900
   03 h8x01 = '(2i2,i2)'
      read(h8x01,501)(h4m01(i1),i1=1,2)
  501 format(2a4)
      i2x01 = 11
      i2x02 = 22
      write(h6x01,h8x01) i2x01,i2x02,istf1(i2x01,i2x02)
      hcom = h6x01
      hexp = '112233'
      go to 7900
   04 r4x01 = 2.49e+1
      r8x01 = 0.12d+1
      write(h6x01,'(f6.2)') r4x01+r8x01
      hcom = h6x01
      hexp = ' 26.1 '
      go to 7900
      data h3m01/'(f9','.1)'/
   05 r4x01 = 1.1e+0
      write(h9x01,h3m01) r4x01**(4.0e+0/1.0e+0)
      hcom = h9x01
      hexp = '      1.1'
      go to 7900
   06 i2x01 = 14
      i2x02 = -7
      write(h5x01,h6p01) i2x01/i2x02+i2x01
      hcom = h5x01
      hexp = ' 0012'
      go to 7900
   07 r4x01 = 2.2e+0
      r8x01 = 1.5d+1
      write(h9x01,603) +r4x01,-r8x01
  603 format(f4.1,f5.1)
      hcom = h9x01
      hexp = ' 2.2-15.0'
      go to 7900
   08 write(h4x01,604) 'abcd'
  604 format(a4)
      hcom = h4x01
      hexp = 'abcd'
      go to 7900
   09 assign 605 to i4x01
      write(h6x01,i4x01) h6p01
  605 format(a6)
      hcom = h6x01
      hexp = '(i5.4)'
      go to 7900
      data h2m01/'(a','4)'/
   10 h7x01 = 'abcdefg'
      write(h4x01,h2m01) h7x01( :4)
      hcom = h4x01
      hexp = 'abcd'
      go to 7900
   11 h2m01(1) = '(a'
      h2m01(2) = '4)'
      h2x01 = 'ab'
      h2x02 = 'cd'
      write(h4x01,h2m01) hstf1(h2x01,h2x02)
      hcom = h4x01
      hexp = 'abcd'
      go to 7900
   12 h2x01 = 'ab'
      h3x01 = 'abc'
      write(h4x01,606) (h2x01//h3x01( :1)//'d')
  606 format(a4)
      hcom = h4x01
      hexp = 'abad'
      go to 7900
   13 assign 607 to i4x01
      write(h4x01,i4x01) 'a'//'b'//'c'
  607 format(a3)
      hcom = h4x01
      hexp = 'abc '
      go to 7900
 7900 if(hcom.ne.hexp) then
        go to 9900
      endif
      go to 9999
 9900 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1              13hcomputed   = ,a50,/,25x,
     2              13hexpected   = ,a50)')
     3              item,hcom,hexp
      iero= iero+1
      go to 9999
 9999 item=item+1
      if(item.le.13) then
        go to (01,02,03,04,05,06,07,
     1            08,09,10,11,12,13) item
      endif
      if(iero.eq.0) then
      write(6,'(///,4x,13htotal item  (,i2,1h),5x,4h*ok*)') item-1
      else
      write(6,'(///,4x,13htotal item  (,i2,1h))') item-1
      endif
      write(6,'(//,5x,9hfortran77,3x,9h*fortran*,3x,4hexit)')
      stop
      end
