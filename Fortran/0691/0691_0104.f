      COMPLEX        C
      INTEGER*2 I(4),II(4),I1(4),II1(4),I2(4),II2(4),I5(4),II5(4)
      INTEGER*2 ITEM(40)
      WRITE(6,5)
      WRITE(6,7)
      WRITE(6,8)
    8 FORMAT(/1X,8H- ITEM -/)
   12 FORMAT(/2H (,I2,1H))
      READ(5,10)
   10 FORMAT(11X)
      READ(5,15)
   15 FORMAT(12X)
      READ(5,20)
   20 FORMAT(27X)
      DO 3 N=1,40
    3 ITEM (N)=N
      WRITE(6,12) ITEM(1)
      WRITE(6,13)
   13 FORMAT(1X,19H1234567890     *OK*)
      WRITE(6,10)
      WRITE(6,12) ITEM(2)
      WRITE(6,14)
   14 FORMAT(1X,19H+-/*( ).,$'    *OK*)
      WRITE(6,15)
      WRITE(6,12) ITEM(3)
      WRITE(6,16)
   16 FORMAT(1X,31HABCDEFGHIJKLMNOPQRSTUVWXYZ *OK*)
      WRITE(6,20)
C
      WRITE(6,40)
      WRITE(6,12) ITEM(4)
      WRITE(6,1000)
 1000 FORMAT(1X,1H',8X,1H',29X,21HFORMAT  10H0123456789)
      WRITE(6,45)
   45 FORMAT(1H ,10H0123456789)
      WRITE(6,12) ITEM(5)
      WRITE(6,1001)
 1001 FORMAT(1X,1H',9X,1H',28X,22HFORMAT  11H+-*/( ).,$')
      WRITE(6,50)
   50 FORMAT(1H ,11H+-*/( ).,$')
      WRITE(6,12) ITEM(6)
      WRITE(6,1002)
 1002 FORMAT(1X,1H',24X,1H',13X,37HFORMAT  26HABCDEFGHIJKLMNOPQRSTUVWXYZ
     *)
      WRITE(6,55)
   55 FORMAT(1H ,26HABCDEFGHIJKLMNOPQRSTUVWXYZ)
      WRITE(6,12) ITEM(7)
      WRITE(6,1003)
 1003 FORMAT(1X,1H',13X,1H',24X,34HFORMAT  3HABC,4H ABC,4H ABC,4H ABC)
      WRITE(6,60)
   60 FORMAT(1H ,3HABC,4H ABC,4H ABC,4H ABC)
      WRITE(6,12) ITEM(8)
      WRITE(6,1004)
 1004 FORMAT(1X,1H',14X,1H',24X,47HFORMAT  16HABCDE      ABCDE/1H ,5H
     *  ,5HABCDE)
      WRITE(6,65)
   65 FORMAT(1H ,16HABCDE      ABCDE/1H ,5H     ,5HABCDE)
      WRITE(6,12) ITEM(9)
      WRITE(6,1005)
 1005 FORMAT(40X,58HFORMAT  58H 2345.....7890,50H1234.....7890,19H1234..
     *...789 / 1X,1H',116X,1H')
      WRITE(6,70)
   70 FORMAT(   50H 2345678901234567890123456789012345678901234567890,
     1          50H12345678901234567890123456789012345678901234567890,
     2          19H1234567890123456789)
      WRITE(6,75)
      J=12345
      R=0.12345
      C=(123.45,123.45)
      WRITE(6,12) ITEM(10)
      WRITE(6,1006)
 1006 FORMAT(40X,84HFORMAT  10HINTEGER = ,I6,5H     ,7HREAL = ,F8.5,5H
     *   ,10HCOMPLEX = ,1H(,2E12.5,1H)/)
      WRITE(6,80) J,R,C
   80 FORMAT(1H ,10HINTEGER = ,I6,5H     ,7HREAL = ,F8.5,5H     ,
     1       10HCOMPLEX = ,1H(,2E12.5,1H))
      WRITE(6,12) ITEM(11)
      J=-12345
      R=-0.12345
      C=(-123.45,-123.45)
      WRITE(6,1006)
      WRITE(6,80) J,R,C
      WRITE(6,999)
  999 FORMAT(1H1//1X)
      WRITE(6,85)
      READ(5,90) I(1),I(2),I(3),I(4)
   90 FORMAT(6X,I4,6X,I4,6X,I4,6X,I4)
      READ(5,100) I1(1),I1(2),I1(3),I1(4)
  100 FORMAT(I1,9X,I2,8X,I3,7X,I4,6X)
      READ(5,105)I2(1),I2(2),I2(3),I2(4)
  105 FORMAT(I1,10XI2,10XI3,10XI4,3X)
      READ(5,110) I4
  110 FORMAT(75X,I4)
      DO 120 N=1,4
  120 II(N)=7890
      WRITE(6,122)
  122 FORMAT(/1X,8H- ITEM -,19X,11H- JUSTICE -,2X,19H- COMPUTED VALUE -
     *,2X,17H- COMPARE VALUE -,3X,14H- DIFFERENCE -/)
      WRITE(6,124) ITEM(12)
  124 FORMAT(/1X,1H(,I2,1H)/)
      DO 126 N=1,4
      IDEF=I(N)-II(N)
      IF(IDEF.EQ.0) WRITE(6,132)      I(N),II(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134)      I(N),I(N),IDEF
  132 FORMAT(31X,6H* OK *,6X,I9,11X,I9,9X,I7/)
  134 FORMAT(29X,9H* ERROR *,5X,I9,11X,I9,9X,I7/)
  126 CONTINUE
      WRITE(6,124) ITEM(13)
      II1(1)=1
      II1(2)=12
      II1(3)=123
      II1(4)=1234
      DO 142 N=1,4
      IDEF=I1(N)-II1(N)
      IF(IDEF.EQ.0) WRITE(6,132) I1(N),II1(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) I1(N),II1(N),IDEF
  142 CONTINUE
      WRITE(6,124) ITEM(14)
      II2(1)=1
      II2(2)=23
      II2(3)=456
      II2(4)=7890
      DO 144 N=1,4
      IDEF=I2(N)-II2(N)
      IF(IDEF.EQ.0) WRITE(6,132) I2(N),II2(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) I2(N),II2(N),IDEF
  144 CONTINUE
      WRITE(6,124) ITEM(15)
      II4= 6789
      IDEF=I4-II4
      IF(IDEF.EQ.0) WRITE(6,132) I4,II4,IDEF
      IF(IDEF.NE.0) WRITE(6,134) I4,II4,IDEF
      WRITE(6,999)
      WRITE(6,135)
      WRITE(6,147)
  147 FORMAT(/20X,13HCOLUMN NUMBER)
      WRITE(6,70)
      WRITE(6,8)
      WRITE(6,12) ITEM(16)
      WRITE(6,1007)
 1007 FORMAT(40X,37H1X,2X,3X,4X,5X,6X,7X,8X,9X,10X   TEST/)
      WRITE(6,140)
  140 FORMAT(1H ,1X,1H*,2X,2H**,3X,3H***,4X,4H****,5X,5H*****,6X,
     1       6H******,7X,7H*******,8X,8H********,9X,9H*********,
     2       10X,10H**********)
      WRITE(6,141)
  141 FORMAT(1H ,110H *  **   ***    ****     *****      ******       **
     1*****        ********         *********          **********)
      WRITE(6,12) ITEM(17)
      WRITE(6,1008)
 1008 FORMAT(40X,18H10X,20X,30X   TEST/)
      WRITE(6,145)
  145 FORMAT(1H ,10X,1H*,20X,1H*,30X,1H*,40X,1H*)
      WRITE(6,146)
  146 FORMAT(1H ,104H          *                    *
     1           *                                        *)
      WRITE(6,12) ITEM(18)
      J=1234
      R=1234.5
      WRITE(6,1009)
 1009 FORMAT(40X,9HDATA  J,R /40X,23HFORMAT  10X,I4,10X,F7.1/)
      WRITE(6,150) J,R
  150 FORMAT(1H ,10X,I4,10X,F7.1)
      WRITE(6,151)
  151 FORMAT(1H ,31H          1234           1234.5)
      WRITE(6,12) ITEM(19)
      WRITE(6,1010)
 1010 FORMAT(40X,9HDATA  J,R /40X,23HFORMAT  40X,I4,50X,F7.1/)
      WRITE(6,155) J,R
  155 FORMAT(1H ,40X,I4,50X,F7.1)
      WRITE(6,156)
  156 FORMAT(1H ,101H                                        1234
     *                                            1234.5)
      WRITE(6,12) ITEM(20)
      WRITE(6,1011)
 1011 FORMAT(40X,13HDATA  J,R,J,R/40X,21HFORMAT  5X,I4,5X,F7.1/)
      WRITE(6,157) J,R,J,R
  157 FORMAT(1H ,5X,I4,5X,F7.1,5X,I4,5X,F7.1)
      WRITE(6,158)
  158 FORMAT(1H ,42H     1234      1234.5     1234      1234.5)
C
C
      WRITE(6,160)

      READ(5,165)
  165 FORMAT(11X)
      WRITE(6,12) ITEM(21)
      WRITE(6,13)
      WRITE(6,165)
      READ(5,170)
  170 FORMAT(12X)
      WRITE(6,12) ITEM(22)
      WRITE(6,14)
      WRITE(6,170)
      READ(5,175)
  175 FORMAT(27X)
      WRITE(6,12) ITEM(23)
      WRITE(6,16)
      WRITE(6,175)
      WRITE(6,999)
      WRITE(6,180)
      WRITE(6,8)
      WRITE(6,12) ITEM(24)
      WRITE(6,1012)
 1012 FORMAT(1X,1H',8X,1H',29X,21HFORMAT  ' 0123456789')
      WRITE(6,185)
  185 FORMAT(' 0123456789')
      WRITE(6,12) ITEM(25)
      WRITE(6,1013)
 1013 FORMAT(1X,1H',8X,1H',29X,21HFORMAT  ' +-*/( ).,$')
      WRITE(6,190)
  190 FORMAT(' +-*/( ).,$')
      WRITE(6,12) ITEM(26)
      WRITE(6,1014)
 1014 FORMAT(1X,1H',24X,1H',13X,22HFORMAT  ' ABCD....XYZ')
      WRITE(6,195)
  195 FORMAT(' ABCDEFGHIJKLMOPQRSTUVWXYZ')
      J=1234
      R=123.45
      C=(1.23,1.23)
      WRITE(6,12) ITEM(27)
      WRITE(6,1015)
 1015 FORMAT(40X,29HFORMAT  '23456789012.....789' /1X,1H',116X,1H')
      WRITE(6,200)
  200 FORMAT( ' 2345678901234567890123456789012345678901234567890',
     2        '12345678901234567890123456789012345678901234567890',
     3        '1234567890123456789')
      WRITE(6,12) ITEM(28)
      WRITE(6,1017)
 1017 FORMAT(40X,79HFORMAT  ' INTEGER = ',I4,'     ','REAL = ',F7.2,'COM
     *PLEX = ','     (',2F8.2,')')
      WRITE(6,205) J,R,C
  205 FORMAT(' INTEGER = ',I4,'     ','REAL = ',F7.2,'COMPLEX = ',
     1       '     (',2F8.2,')')
      WRITE(6,999)
      WRITE(6,210)
      READ(5,215)
  215 FORMAT(T10,11X)
      WRITE(6,12) ITEM(29)
      WRITE(6,1100)
 1100 FORMAT(10X,17H1234567890   *OK*)
      WRITE(6,215)
      READ(5,220)
  220 FORMAT(T20,12X)
      WRITE(6,12) ITEM(30)
      WRITE(6,1101)
 1101 FORMAT(20X,17H+-/*( ).,$'  *OK*)
      WRITE(6,220)
      READ(5,225)
  225 FORMAT(T30,28X)
      WRITE(6,12) ITEM(31)
      WRITE(6,1102)
 1102 FORMAT(30X,32HABCDEFGHIJKLMNOPQRSTUVWXYZ  *OK*)
      WRITE(6,225)
      READ(5,245) I5(1),I5(2),I5(3),I5(4)
  245 FORMAT(T6,I4,T16,I4,T26,I4,T36,I4)
      WRITE(6,122)
      WRITE(6,124) ITEM(32)
      DO 252 N=1,4
  252 II5(N)=6789
      DO 254 N=1,4
      IDEF=I5(N)-II5(N)
      IF(IDEF.EQ.0) WRITE(6,132) I5(N),II5(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) I5(N),II5(N),IDEF
  254 CONTINUE
      WRITE(6,999)
      WRITE(6,300)
      WRITE(6,147)
      WRITE(6,70)
      WRITE(6,12) ITEM(33)
      WRITE(6,1103)
 1103 FORMAT(40X,49HFORMAT  T20,3HT20,T40,3HT40,T80,3HT80,T100,4HT100 /
     * 19X,3H' ',17X,3H' ',37X,3H' ',17X,4H'  ')
      WRITE(6,305)
  305 FORMAT(T20,3HT20,T40,3HT40,T80,3HT80,T100,4HT100)
      WRITE(6,12) ITEM(34)
      WRITE(6,1104)
 1104 FORMAT(40X,57HFORMAT  T110,4HT110,T90,3HT90,T65,3HT65,T33,3HT33,T5
     *,2HT5/ 4X,2H'',26X,3H' ',29X,3H' ',22X,3H' ',17X,4H'  ')
      WRITE(6,310)
  310 FORMAT(T110,4HT110,T90,3HT90,T65,3HT65,T33,3HT33,T5,2HT5)
      WRITE(6,12) ITEM(35)
      J=-1234
      R=-123.45
      C=(0.123,0.723)
      WRITE(6,1105)
 1105 FORMAT(40X,13HDATA    J,R,C /
     *       40X,76HFORMAT  T20,'INTEGER = ',I5,T40,'REAL = ',F8.2,T60,'
     *COMPLEX = ','(',2F7.3')' /)
      WRITE(6,315) J,R,C
  315 FORMAT(T20,'INTEGER = ',I5,T40,'REAL = ',F8.2,T60,'COMPLEX = ',
     1       '(',2F7.3,')')
      WRITE(6,12) ITEM(36)
      WRITE(6,1106)
 1106 FORMAT(40X,11HDATA    R,C /
     *       40X,55HFORMAT  T30,'REAL = ',E12.5,T70,'COMPLEX= (',2E13.5,
     *')'/)
      WRITE(6,320) R,C
  320 FORMAT(T30,'REAL = ',E12.5,T70,'COMPLEX= (',2E13.5,')')
      WRITE(6,330)
  330 FORMAT(1H0,/  6X,23H*FORTRAN*          EXIT /)
    5 FORMAT(1H1 / 6X,25H*FORTRAN*          ENTER / )
    7 FORMAT(   //10X,12HH-TYPE INPUT//)
   40 FORMAT(  //10X,27HH-TYPE OUTPUT (H-TYPE ONLY) )
   75 FORMAT(  //10X,26HH-TYPE OUTPUT (F,E,I-TYPE))
   85 FORMAT(   //10X,12HX-TYPE INPUT//)
  135 FORMAT(   //10X,13HX-TYPE OUTPUT//)
  160 FORMAT(   //10X,18HLITERAL TYPE INPUT//)
  180 FORMAT(  //10X,19HLITERAL TYPE OUTPUT//)
  210 FORMAT(   //10X,12HT-TYPE INPUT//)
  300 FORMAT(   //10X,13HT-TYPE OUTPUT//)
      STOP
      END
