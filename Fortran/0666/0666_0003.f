      character h1m01(6)*1,h2x01*2,h2x02*2,h3x01*3,h4x01*4,hstf1*5,
     c          h5x01*5,h7x01*7,h7x02*2,h7x03*3,h8x01*8,
     c          h4m01(4)*4,h4p01*4,hax01*10,hexp*50,hcom*50
      character h1x01*1,h4x02*4,h6x01*6,h6x02*6,h7x04*7
      character h5m01(2)*5,h2m01(5)*2
      parameter(h4p01='(a5)')
      integer*4 i2x01,i2x02
      hstf1(h4x01) = 'h'//h4x01
      write(6,'(1h1,///,5x,9hfortran77,3x,9h*fortran*,3x,5henter,/)')
      item = 1
      iero = 0
   01 h4x01 = 'abcd'
      read(h4x01,'(a4)') h7x01(1:4)
      hcom = h7x01(1:4)
      hexp = 'abcd'
      go to 7900
   02 h5x01 = 'abcde'
      read(h5x01,h4p01) h7x01(2:6)
      hcom = h7x01(2:6)
      hexp = 'abcde'
      go to 7900
   03 h2x01 = 'a3'
      i2x01 = 1
      read(h2x01,500) h2x02
  500 format(a2)
      h3x01 = 'abc'
      read(h3x01,'('//h2x02//')') h7x01(i2x01*3:i2x01+5)
      hcom = h7x01(i2x01*3:i2x01+5)
      hexp = 'abc'
      go to 7900
      data h1m01/1h(,1ha,1h1,1h),2*1h /
   04 h1x01 = 'a'
      read(h1x01,h1m01) h7x01(5:5)
      hcom = h7x01(5:5)
      hexp = 'a'
      go to 7900
   05 h5x01='(a7)b'
      h8x01 = 'abcdefgh'
      read(h8x01,h5x01(1:4)) h7x01(1:)
      hcom = h7x01(1: )
      hexp = 'abcdefg'
      go to 7900
   06 h4x02 = '(a5)'
      h4x01 = '4x03'
      read(h4x02,501) h4x01
  501 format(a4)
      h5x01 = 'abcde'
      read(h5x01,h4x02(1:4)) h7x01(2:6)
      hcom = h7x01(2:6)
      hexp = 'abcde'
      go to 7900
   07 h4x01 = '(a4)'
      h4x02 = 'abcd'
      read(h4x02,h4x01) h7x01(5: )
      hcom = h7x01(5: )
      hexp = 'bcd'
      go to 7900
   08 h3x01 = ' 4)'
      h4x01 = '(a4)'
      h6x01 = 'abcdef'
      h2x01 = '(a'
      read(h6x01,h2x01//h3x01) h7x01(:4)
      hcom = h7x01(:4)
      hexp = 'abcd'
      goto 7900
   09 h5x01 = 'abcde'
      i2x01 = 2
      read(h5x01,502) h7x04(i2x01-1:i2x01*2)
  502 format(a4)
      hcom = h7x04(i2x01-1:i2x01*2)
      hexp = 'abcd'
      go to 7900
   10 h4x01 = 'abcd'
      assign 503 to i2x01
      i2x02 = i2x01+1
      read(h4x01,i2x01) h7x01(1:2),h7x01(5:6)
  503 format(2a2)
      hcom = h7x01(1:2)//h7x01(5:6)
      hexp = 'abcd'
      go to 7900
   11 hax01 = '(a1,a2,a3)'
      i2x01 = 3
      h6x01 = 'abcdef'
      read(hax01,504)(h2m01(i1),i1=1,5)
  504 format(5a2)
      read(h6x01,h2m01) h7x02( :1),h7x03(i2x01-1:i2x01),h7x01(4:i2x01*2)
      hcom = h7x02( :1)//h7x03(i2x01-1:i2x01)//h7x01(4:i2x01*2)
      hexp = 'abcdef'
      go to 7900
   12 h7x01 = 'abcdefg'
      assign 601 to i2x01
      write(h2x01,i2x01) h7x01(5:6)
  601 format(a2)
      hcom = h2x01
      hexp = 'ef'
      go to 7900
   13 h7x01 = 'abcdefg'
      hax01 = '(a1,a2,a3)'
      read(hax01,505)(h2m01(i1),i1=1,5)
  505 format(5a2)
      write(h6x01,h2m01) h7x01(1:1),h7x01(1:2),h7x01(5: )
      hcom = h6x01
      hexp = 'aabefg'
      go to 7900
   14 h5x01 = '(a3)a'
      h7x01 = 'abcdefg'
      i2x01 = 1
      write(h3x01,h5x01(i2x01:i2x01*4)) h7x01(i2x01*4: )
      hcom = h3x01
      hexp = 'def'
      go to 7900
   15 h5m01(1) = '(a1,a'
      h5m01(2) = '2,a3)'
      h7x01 = 'abcdefg'
      write(h6x01,h5m01) h7x01( :1),h7x01( :2),h7x01( :3)
      hcom = h6x01
      hexp = 'aababc'
      go to 7900
   16 h4m01(1) = 'abcd'
      h4m01(2) = 'bcde'
      h4m01(3) = 'cdef'
      h4m01(4) = 'defg'
      write(hax01,610)(h4m01(i1)(1:2),i1=1,4)
  610 format(4a2)
      hcom = hax01
      hexp = 'abbccdde'
      go to 7900
   17 h5m01(1) = '(i3,a'
      h5m01(2) = '1,a2)'
      i2x01 = 10
      h6x01 = 'abcdef'
      write(h6x02,h5m01) i2x01,h6x01(i2x01/5:2),h6x01(i2x01/5:i2x01-7)
      hcom = h6x02
      hexp = ' 10bbc'
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
      if(item.le.17) then
        go to (01,02,03,04,05,06,07,08,09,10,11,
     1           12,13,14,15,16,17 ) item
      endif
      if(iero.eq.0) then
      write(6,'(///,4x,13htotal item  (,i2,1h),5x,4h*ok*)') item-1
      else
      write(6,'(///,4x,13htotal item  (,i2,1h))') item-1
      endif
      write(6,'(//,5x,9hfortran77,3x,9h*fortran*,3x,4hexit)')
      stop
      end
