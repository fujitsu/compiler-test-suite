      integer*2 i2x01,i2x02
      character*1   h1m01,hax02*10,hap01*10
      character*2   h2m01,h2m02,h2m03,h2m04,h2p01,h2p02,h2p03,h2p04
      character*3   h3m01,h3x01,h3m02(5)
      character*4   h4m01,h4m02,h4p01,h4p02,h4x01,h4x02,h5x01*5
      character*50  hcom,hexp
      parameter     (i4p01 = 1,
     *               i4p02 = 2,
     *               i4p03 = 3,
     *               i4p04 = 4,
     *               h4p01 = 'abcd',
     *               h4p02 = 'aaaa',
     *               h2p01 = 'aa',
     *               h2p02 = 2hbb,
     *               h2p03 = 'cc',
     *               h3x01 = 'abc',
     *               h2p04 = 2hdd)
      dimension     h1m01(10,10),h2m01(4,4),h2m02(3,3),h2m03(4,4),
     *              h2m04(10,1),h3m01(10),h4m01(3),h4m02(4)
      data     (h4m01(i1),i1=i4p01,i4p03)
     *         /i4p02*'abcd',4haaaa/
      data     (h3m01(i1),i1=i4p04/2,i4p04*2+i4p02,i4p04)
     *         /i4p01*'aaa',i4p01*'aaa',i4p01*'bbb'/
      data     (h4m02(i1),i1=i4p02/2,i4p02*2)
     *         /i4p03*h4p01,i4p01*h4p02/
      data     (h1m01(i1,i1),i1=1,10)
     *         /i4p04*'a',i4p04*'b',i4p02*'c'/
      data     ((h2m01(i1,i2),i1=i4p01,i4p04),i2=i4p01,i4p04,i4p01)
     *         /i4p04*'aa',i4p04*'bb',i4p04*'cc',i4p04*2hdd/
      data     ((h2m02(i1,i2),i1=i4p01,i4p04-1),i2=i4p04/4,i4p01+2,
     *         i4p04/4)
     *         /i4p03*'aa',i4p03*2hbb,i4p03*'cc'/
      data     ((h2m03(i1,i2),i1=32767/32767,i4p03+1),
     *                        i2=i4p04-3,i4p02*2,i4p02-1)
     *         /i4p04*h2p01,i4p04*h2p02,i4p04*h2p03,i4p04*h2p04/
      data     ((h2m04(i1,i2),i1=i2*2,i4p03*2+2),
     *                       i2=i4p02/2,i4p03-2,i4p04/4)
     *         /i4p04*h2p01,i4p03*h2p02/
      data     i2x01,i2x02/2*32123/
      data     h4x01,h4x02/'abcd',4haaaa/
      data     h5x01(1:3)/'aaa'/,h3m02(1)/'aaa'/
      data     hax02/'aaaaaaaaaa'/,hap01/'abcdeabcde'/
      write(6,'(1h1,///,5x,9hfortran77,3x,9h*FORTRAN*,3x,5henter,/)')
      item = 1
      iero = 0
   01 hcom = h4m01(1) // h4m01(3)
      hexp = 'abcdaaaa'
      go to  7900
   02 hcom = h3m01(2) // h3m01(10) // h3m01(6)
      hexp = 'aaabbbaaa'
      go to  7900
   03 hcom = h4m02(1) // h4m02(4) // h4m02(2)
      hexp = 'abcdaaaaabcd'
      go to  7900
   04 hcom = h1m01(1,1) // h1m01(2,2) // h1m01(5,5) //
     *       h1m01(6,6) // h1m01(9,9) // h1m01(10,10)
      hexp = 'aabbcc'
      go to  7900
   05 hcom = h2m01(1,1) // h2m01(2,2) // h2m01(3,3) //
     *       h2m01(4,4)
      hexp = 'aabbccdd'
      go to  7900
   06 hcom = h2m02(1,1) // h2m02(1,2) // h2m02(3,3)
      hexp = 'aabbcc'
      go to  7900
   07 hcom = h2m03(1,1) // h2m03(1,2) // h2m03(1,3) // h2m03(2,4)
      hexp = 'aabbccdd'
      go to  7900
   08 hcom = h2m04(2,1) // h2m04(6,1)
      hexp = 'aabb'
      go to  7900
   09 hcom = h4x01 // h4x02
      hexp = 'abcdaaaa'
      go to  7900
   10 hcom = h5x01(1:3) // h3x01 // h3m02(1)
      hexp = 'aaaabcaaa'
      go to  7900
   11 icom = i2x01 + i2x02
      iexp = 64246
      go to  7100
   12 hcom = hax02(1:5) // hap01
      hexp = 'aaaaaabcdeabcde'
      go to  7900
 7100 idif = icom - iexp
      if(idif.ne.0 .and. icom.ne.-1290) then
      go to 9100
      endif
      go to 9999
 7900 if(hcom.ne.hexp) then
        go to 9900
      endif
      go to 9999
 9100 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1             13hcomputed   = ,i11,/,25x,
     2             13hexpected   = ,i11)')
     3             item,icom,iexp
      iero = iero+1
      go to 9999
 9900 write(6,'(/,4x,4hitem,1h(,i2,1h),5x,5herror,3x,
     1              13hcomputed   = ,a50,/,25x,
     2              13hexpected   = ,a50)')
     3              item,hcom,hexp
      iero= iero+1
      go to 9999
 9999 item=item+1
      if(item.le.12) then
        go to (01,02,03,04,05,06,
     1         07,08,09,10,11,12   ) item
      endif
      if(iero.eq.0) then
      write(6,'(///,4x,13htotal item  (,i2,1h),5x,4h*ok*)') item-1
      else
      write(6,'(///,4x,13htotal item  (,i2,1h))') item-1
      endif
      write(6,'(//,5x,9hfortran77,3x,9h*FORTRAN*,3x,4hexit)')
      stop
      end
