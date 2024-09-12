      complex        c
      integer*2 i(4),ii(4),i1(4),ii1(4),i2(4),ii2(4),i5(4),ii5(4)
      integer*2 item(40)
      write(6,5)
      write(6,7)
      write(6,8)
    8 format(/1x,8h- item -/)
   12 format(/2h (,i2,1h))
      read(5,10)
   10 format(11x)
      read(5,15)
   15 format(12x)
      read(5,20)
   20 format(27x)
      do 3 n=1,40
    3 item (n)=n
      write(6,12) item(1)
      write(6,13)
   13 format(1x,38h1234567890                        *ok*)
      write(6,10)
      write(6,12) item(2)
      write(6,14)
   14 format(1x,38h+-/*( ).,$'                       *ok*)
      write(6,15)
      write(6,12) item(3)
      write(6,16)
   16 format(1x,53habcdefghijklmnopqrstuvwxyz                       *ok*
     *)
      write(6,20)
      write(6,40)
      write(6,12) item(4)
      write(6,1000)
 1000 format(1x,1h',8x,1h',29x,21hformat  10h0123456789)
      write(6,45)
   45 format(1h ,10h0123456789)
      write(6,12) item(5)
      write(6,1001)
 1001 format(1x,1h',9x,1h',28x,22hformat  11h+-*/( ).,$')
      write(6,50)
   50 format(1h ,11h+-*/( ).,$')
      write(6,12) item(6)
      write(6,1002)
 1002 format(1x,1h',24x,1h',13x,37hformat  26habcdefghijklmnopqrstuvwxyz
     *)
      write(6,55)
   55 format(1h ,26habcdefghijklmnopqrstuvwxyz)
      write(6,12) item(7)
      write(6,1003)
 1003 format(1x,1h',13x,1h',24x,34hformat  3habc,4h abc,4h abc,4h abc)
      write(6,60)
   60 format(1h ,3habc,4h abc,4h abc,4h abc)
      write(6,12) item(8)
      write(6,1004)
 1004 format(1x,1h',14x,1h',24x,47hformat  16htokyo      tokyo/1h ,5h
     *  ,5htokyo)
      write(6,65)
   65 format(1h ,16htokyo      tokyo/1h ,5h     ,5htokyo)
      write(6,12) item(9)
      write(6,1005)
 1005 format(40x,58hformat  58h 2345.....7890,50h1234.....7890,19h1234..
     *...789 / 1x,1h',116x,1h')
      write(6,70)
   70 format(   50h 2345678901234567890123456789012345678901234567890,
     1          50h12345678901234567890123456789012345678901234567890,
     2          19h1234567890123456789)
      write(6,75)
      j=12345
      r=0.12345
      c=(123.45,123.45)
      write(6,12) item(10)
      write(6,1006)
 1006 format(40x,84hformat  10hinteger = ,i6,5h     ,7hreal = ,f8.5,5h
     *   ,10hcomplex = ,1h(,2e12.5,1h)/)
      write(6,80) j,r,c
   80 format(1h ,10hinteger = ,i6,5h     ,7hreal = ,f8.5,5h     ,
     1       10hcomplex = ,1h(,2e12.5,1h))
      write(6,12) item(11)
      j=-12345
      r=-0.12345
      c=(-123.45,-123.45)
      write(6,1006)
      write(6,80) j,r,c
      write(6,999)
  999 format(1h1//1x)
      write(6,85)
      read(5,90) i(1),i(2),i(3),i(4)
   90 format(6x,i4,6x,i4,6x,i4,6x,i4)
      read(5,100) i1(1),i1(2),i1(3),i1(4)
  100 format(i1,9x,i2,8x,i3,7x,i4,6x)
      read(5,105)i2(1),i2(2),i2(3),i2(4)
  105 format(i1,10xi2,10xi3,10xi4,3x)
      read(5,110) i4
  110 format(75x,i4)
      do 120 n=1,4
  120 ii(n)=7890
      write(6,122)
  122 format(/1x,8h- item -,19x,11h- justice -,2x,19h- computed value -
     *,2x,17h- compare value -,3x,14h- difference -/)
      write(6,124) item(12)
  124 format(/1x,1h(,i2,1h)/)
      do 126 n=1,4
      idef=i(n)-ii(n)
      if(idef.eq.0) write(6,132)      i(n),ii(n),idef
      if(idef.ne.0) write(6,134)      i(n),ii(n),idef
  132 format(31x,6h* ok *,6x,i9,11x,i9,9x,i7/)
  134 format(29x,9h* error *,5x,i9,11x,i9,9x,i7/)
  126 continue
      write(6,124) item(13)
      ii1(1)=1
      ii1(2)=12
      ii1(3)=123
      ii1(4)=1234
      do 142 n=1,4
      idef=i1(n)-ii1(n)
      if(idef.eq.0) write(6,132) i1(n),ii1(n),idef
      if(idef.ne.0) write(6,134) i1(n),ii1(n),idef
  142 continue
      write(6,124) item(14)
      ii2(1)=1
      ii2(2)=23
      ii2(3)=456
      ii2(4)=7890
      do 144 n=1,4
      idef=i2(n)-ii2(n)
      if(idef.eq.0) write(6,132) i2(n),ii2(n),idef
      if(idef.ne.0) write(6,134) i2(n),ii2(n),idef
  144 continue
      write(6,124) item(15)
      ii4= 6789
      idef=i4-ii4
      if(idef.eq.0) write(6,132) i4,ii4,idef
      if(idef.ne.0) write(6,134) i4,ii4,idef
      write(6,999)
      write(6,135)
      write(6,147)
  147 format(/20x,13hcolumn number)
      write(6,70)
      write(6,8)
      write(6,12) item(16)
      write(6,1007)
 1007 format(40x,39h1x,2x,3x,4x,5x,6x,7x,8x,9x,10x  no test/)
      write(6,140)
  140 format(1h ,1x,1h*,2x,2h**,3x,3h***,4x,4h****,5x,5h*****,6x,
     1       6h******,7x,7h*******,8x,8h********,9x,9h*********,
     2       10x,10h**********)
      write(6,141)
  141 format(1h ,110h *  **   ***    ****     *****      ******       **
     1*****        ********         *********          **********)
      write(6,12) item(17)
      write(6,1008)
 1008 format(40x,20h10x,20x,30x  no test/)
      write(6,145)
  145 format(1h ,10x,1h*,20x,1h*,30x,1h*,40x,1h*)
      write(6,146)
  146 format(1h ,104h          *                    *
     1           *                                        *)
      write(6,12) item(18)
      j=1234
      r=1234.5
      write(6,1009)
 1009 format(40x,9hdata  j,r /40x,23hformat  10x,i4,10x,f7.1/)
      write(6,150) j,r
  150 format(1h ,10x,i4,10x,f7.1)
      write(6,151)
  151 format(1h ,31h          1234           1234.5)
      write(6,12) item(19)
      write(6,1010)
 1010 format(40x,9hdata  j,r /40x,23hformat  40x,i4,50x,f7.1/)
      write(6,155) j,r
  155 format(1h ,40x,i4,50x,f7.1)
      write(6,156)
  156 format(1h ,101h                                        1234
     *                                            1234.5)
      write(6,12) item(20)
      write(6,1011)
 1011 format(40x,13hdata  j,r,j,r/40x,21hformat  5x,i4,5x,f7.1/)
      write(6,157) j,r,j,r
  157 format(1h ,5x,i4,5x,f7.1,5x,i4,5x,f7.1)
      write(6,158)
  158 format(1h ,42h     1234      1234.5     1234      1234.5)
      write(6,160)
      read(5,165)
  165 format(11x)
      write(6,12) item(21)
      write(6,13)
      write(6,165)
      read(5,170)
  170 format(12x)
      write(6,12) item(22)
      write(6,14)
      write(6,170)
      read(5,175)
  175 format(27x)
      write(6,12) item(23)
      write(6,16)
      write(6,175)
      write(6,999)
      write(6,180)
      write(6,8)
      write(6,12) item(24)
      write(6,1012)
 1012 format(1x,1h',8x,1h',29x,21hformat  ' 0123456789')
      write(6,185)
  185 format(' 0123456789')
      write(6,12) item(25)
      write(6,1013)
 1013 format(1x,1h',8x,1h',29x,21hformat  ' +-*/( ).,$')
      write(6,190)
  190 format(' +-*/( ).,$')
      write(6,12) item(26)
      write(6,1014)
 1014 format(1x,1h',24x,1h',13x,22hformat  ' abcd....xyz')
      write(6,195)
  195 format(' abcdefghijklmopqrstuvwxyz')
      j=1234
      r=123.45
      c=(1.23,1.23)
      write(6,12) item(27)
      write(6,1015)
 1015 format(40x,29hformat  '23456789012.....789' /1x,1h',116x,1h')
      write(6,200)
  200 format( ' 2345678901234567890123456789012345678901234567890',
     2        '12345678901234567890123456789012345678901234567890',
     3        '1234567890123456789')
      write(6,12) item(28)
      write(6,1017)
 1017 format(40x,79hformat  ' integer = ',i4,'     ','real = ',f7.2,'com
     *plex = ','     (',2f8.2,')')
      write(6,205) j,r,c
  205 format(' integer = ',i4,'     ','real = ',f7.2,'complex = ',
     1       '     (',2f8.2,')')
      write(6,999)
      write(6,210)
      read(5,215)
  215 format(t10,11x)
      write(6,12) item(29)
      write(6,1100)
 1100 format(10x,35h1234567890                     *ok*)
      write(6,215)
      read(5,220)
  220 format(t20,12x)
      write(6,12) item(30)
      write(6,1101)
 1101 format(20x,36h+-/*( ).,$'                     *ok*)
      write(6,220)
      read(5,225)
  225 format(t30,27x)
      write(6,12) item(31)
      write(6,1102)
 1102 format(30x,51habcdefghijklmnopqrstuvwxyz                     *ok*)
      write(6,225)
      read(5,245) i5(1),i5(2),i5(3),i5(4)
  245 format(t6,i4,t16,i4,t26,i4,t36,i4)
      write(6,122)
      write(6,124) item(32)
      do 252 n=1,4
  252 ii5(n)=6789
      do 254 n=1,4
      idef=i5(n)-ii5(n)
      if(idef.eq.0) write(6,132) i5(n),ii5(n),idef
      if(idef.ne.0) write(6,134) i5(n),ii5(n),idef
  254 continue
      write(6,999)
      write(6,300)
      write(6,147)
      write(6,70)
      write(6,12) item(33)
      write(6,1103)
 1103 format(40x,49hformat  t20,3ht20,t40,3ht40,t80,3ht80,t100,4ht100 /
     * 19x,3h' ',17x,3h' ',37x,3h' ',17x,4h'  ')
      write(6,305)
  305 format(t20,3ht20,t40,3ht40,t80,3ht80,t100,4ht100)
      write(6,12) item(34)
      write(6,1104)
 1104 format(40x,57hformat  t110,4ht110,t90,3ht90,t65,3ht65,t33,3ht33,t5
     *,2ht5/ 4x,2h'',26x,3h' ',29x,3h' ',22x,3h' ',17x,4h'  ')
      write(6,310)
  310 format(t110,4ht110,t90,3ht90,t65,3ht65,t33,3ht33,t5,2ht5)
      write(6,12) item(35)
      j=-1234
      r=-123.45
      c=(0.123,0.723)
      write(6,1105)
 1105 format(40x,13hdata    j,r,c /
     *       40x,76hformat  t20,'integer = ',i5,t40,'real = ',f8.2,t60,'
     *complex = ','(',2f7.3')' /)
      write(6,315) j,r,c
  315 format(t20,'integer = ',i5,t40,'real = ',f8.2,t60,'complex = ',
     1       '(',2f7.3,')')
      write(6,12) item(36)
      write(6,1106)
 1106 format(40x,11hdata    r,c /
     *       40x,55hformat  t30,'real = ',e12.5,t70,'complex= (',2e13.5,
     *')'/)
      write(6,320) r,c
  320 format(t30,'real = ',e12.5,t70,'complex= (',2e13.5,')')
      write(6,330)
  330 format(1h0,/  6x,30h*fortran*     fd15132     exit /)
    5 format(1h1 / 6x,32h*fortran*     fd15132     enter / )
    7 format(   //10x,21hh-type input         //)
   40 format(  //10x,36hh-type output          (h-type only) )
   75 format(  //10x,47hh-type output          (f,e,i-type            ))
   85 format(   //10x,21hx-type input         //)
  135 format(   //10x,22hx-type output         //)
  160 format(   //10x,27hliteral type input         //)
  180 format(  //10x,28hliteral type outpot         //)
  210 format(   //10x,21ht-type input         //)
  300 format(   //10x,22ht-type output         //)
      stop
      end
