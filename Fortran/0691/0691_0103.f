      INTEGER*2 I(7),J(7),K(7),L(7),II(7),JJ(7),KK(7),LL(7)
      INTEGER*4 ID(12),JD(12),KD(12),LD(12),IID(12),JJD(12),KKD(12),
     1          LLD(12)
C
C
      ITEM=0
      DO 1000 ITEST=1,2
      READ(5,12) I(1)
   12 FORMAT(I1)
      READ(5,14) I(2)
   14 FORMAT(I2)
      READ(5,16)I(3)
   16 FORMAT(I3)
      READ(5,18) I(4)
   18 FORMAT(I4)
      READ(5,19) I(5)
   19 FORMAT(I5)
      READ(5,20) I(6)
   20 FORMAT(I6)
      READ(5,22) I(7)
   22 FORMAT(I7)
      READ(5,24) (J(N),N=1,4)
   24 FORMAT(I1,I2,I3,I4)
      READ(5,26) J(5),J(6),J(7)
   26 FORMAT(I5,I6,I7)
      READ(5,28) K(1)
   28 FORMAT(I2)
      READ(5,30) K(2)
   30 FORMAT(I3)
      READ(5,32) K(3)
   32 FORMAT(I4)
      READ(5,34) K(4)
   34 FORMAT(I5)
      READ(5,36) K(5)
   36 FORMAT(I6)
      READ(5,38) K(6)
   38 FORMAT(I7)
      READ(5,40) K(7)
   40 FORMAT(I8)
      READ(5,42) (L(N),N=1,4)
   42 FORMAT(I2,I3,I4,I5)
      READ(5,44) (L(N),N=5,7)
   44 FORMAT(I6,I7,I8)
C
C
      READ(5,46) ID(1)
   46 FORMAT(I1)
      READ(5,48) ID(2)
   48 FORMAT(I2)
      READ(5,50) ID(3)
   50 FORMAT(I3)
      READ(5,52) ID(4)
   52 FORMAT(I4)
      READ(5,54) ID(5)
   54 FORMAT(I5)
      READ(5,56) ID(6)
   56 FORMAT(I6)
      READ(5,58) ID(7)
   58 FORMAT(I7)
      READ(5,60) ID(8)
   60 FORMAT(I8)
      READ(5,62) ID(9)
   62 FORMAT(I9)
      READ(5,64) ID(10)
   64 FORMAT(I10)
      READ(5,66) ID(11)
   66 FORMAT(I11)
      READ(5,68) ID(12)
   68 FORMAT(I12)
      READ(5,70) (JD(N),N=1,5)
   70 FORMAT(I1,I2,I3,I4,I5)
      READ(5,74) (JD(N),N=6,9)
   74 FORMAT(I6,I7,I8,I9)
      READ(5,76) (JD(N),N=10,12)
   76 FORMAT(I10,I11,I12)
      READ(5,78) KD(1)
   78 FORMAT(I2)
      READ(5,80) KD(2)
   80 FORMAT(I3)
      READ(5,82) KD(3)
   82 FORMAT(I4)
      READ(5,84) KD(4)
   84 FORMAT(I5)
      READ(5,86) KD(5)
   86 FORMAT(I6)
      READ(5,90) KD(6)
   90 FORMAT(I7)
      READ(5,92) KD(7)
   92 FORMAT(I8)
      READ(5,94) KD(8)
   94 FORMAT(I9)
      READ(5,96) KD(9)
   96 FORMAT(I10)
      READ(5,98) KD(10)
   98 FORMAT(I11)
      READ(5,100) KD(11)
  100 FORMAT(I12)
      READ(5,102) KD(12)
  102 FORMAT(I13)
      READ(5,104) (LD(N),N=1,5)
  104 FORMAT(I2,I3,I4,I5,I6)
      READ(5,106) (LD(N),N=6,9)
  106 FORMAT(I7,I8,I9,I9)
      READ(5,108) (LD(N),N=10,12)
  108 FORMAT(I11,I12,I13)
C
C
      DO 110 N=1,7
      NN=5-N
      IF(NN.LT.0) NN=0
      IF(ITEST.NE.1) GO TO 111
      II(N)= 32767/10**NN
      KK(N)=-32767/10**NN
      GO TO 110
  111 II(N)=12345/10**NN
      KK(N)=-12345/10**NN
  110 CONTINUE
      IF(ITEST.NE.1) GO TO 112
      JJ(1)=3
      JJ(2)=27
      JJ(3)=670
      JJ(4)=0
      JJ(5)=32767
      JJ(6)=32767
      JJ(7)=32767
      LL(1)=-3
      LL(2)=276
      LL(3)=7000
      LL(4)=0
      LL(5)=-32767
      LL(6)=-32767
      LL(7)=-32767
      GO TO 113
  112 JJ(1)=1
      JJ(2)=23
      JJ(3)=450
      JJ(4)=0
      JJ(5)= 12345
      JJ(6)= 12345
      JJ(7)= 12345
      LL(1)=-1
      LL(2)=234
      LL(3)=5000
      LL(4)=0
      LL(5)=-12345
      LL(6)=-12345
      LL(7)=-12345
  113 CONTINUE
      DO 116 N=1,12
      NN=10-N
      IF(NN.LT.0) NN=0
      IF(ITEST.NE.1) GO TO 115
      IID(N)= 2147483647/10**NN
      KKD(N)=-2147483647/10**NN
      GO TO 116
  115 IID(N)=1234567891/10**NN
      KKD(N)=-1234567891/10**NN
  116 CONTINUE
      IF(ITEST.NE.1) GO TO 117
      JJD(1)=2
      JJD(2)=14
      JJD(3)=748
      JJD(4)=3647
      JJD(5)=0
      JJD(6)=214748
      JJD(7)=3647214
      JJD(8)=74836470
      JJD(9)=0
      LLD(1)=-2
      LLD(2)=147
      LLD(3)=4836
      LLD(4)=47000
      LLD(5)=0
      LLD(6)=-214748
      LLD(7)=36470000
      LLD(8)=-21474836
      LLD(9)=470000000
      GO TO 119
  117 CONTINUE
      JJD(1)=1
      JJD(2)=23
      JJD(3)=456
      JJD(4)=7891
      JJD(5)=0
      JJD(6)=123456
      JJD(7)=7891123
      JJD(8)=45678910
      JJD(9)=0
      LLD(1)=-1
      LLD(2)=234
      LLD(3)=5678
      LLD(4)=91000
      LLD(5)=0
      LLD(6)=-123456
      LLD(7)=78910000
      LLD(8)=-12345678
      LLD(9)=910000000
  119 CONTINUE
      DO 118 N=10,12
      IF(ITEST.NE.1) GO TO 121
      JJD(N)=2147483647
      LLD(N)=-2147483647
      GO TO 118
  121 JJD(N)=1234567891
      LLD(N)=-1234567891
  118 CONTINUE
C
C
      IF(ITEST-1) 3210,3210,3211
 3210 WRITE(6,300)
      GO TO 3212
 3211 WRITE(6,301)
 3212 CONTINUE
  300 FORMAT(1H1 / 6X,25H*FORTRAN*          ENTER  / )
  301 FORMAT(1H1// 1X)
      IF(ITEST.EQ.1) WRITE(6,302)
 302  FORMAT(//20X,7HTEST 1 /)
      IF(ITEST.EQ.2) WRITE(6,306)
  306 FORMAT(/20X,7HTEST 2 /)
      WRITE(6,304)
  304 FORMAT(/30X,18H* INPUT (SINGLE) */)
      WRITE(6,122)
  122 FORMAT(15X,8H- ITEM -,5X,11H- JUSTICE -,5X,13H- READ DATA -,5X,
     1       17H- COMPARE VALUE -,5X,14H- DIFFERENCE -/)
      DO 128 N=1,7
      ITEM=ITEM+1
      IDEF=I(N)-II(N)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,I(N),II(N),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,I(N),II(N),IDEF
  124 FORMAT(16X,1H(,I3,1H),10X,6H* OK *,7X,I12,8X,I12,4X,I12)
  126 FORMAT(16X,1H(,I3,1H),10X,9H* ERROR *,6X,I12,8X,I12,4X,I12)
  128 CONTINUE
      ITEM=ITEM+1
      IDEF=J(1)-JJ(1)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,J(1),JJ(1),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,J(1),JJ(1),IDEF
      DO 138 N=2,4
      IDEF=J(N)-JJ(N)
      IF(IDEF.EQ.0) WRITE(6,132) J(N),JJ(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) J(N),JJ(N),IDEF
  132 FORMAT(31X,6H* OK *,7X,I12,8X,I12,4X,I12)
  134 FORMAT(29X,9H* ERROR *,7X,I12,8X,I12,4X,I12)
  138 CONTINUE
      ITEM=ITEM+1
      IDEF=J(5)-JJ(5)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,J(5),JJ(5),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,J(5),JJ(5),IDEF
      DO 142 N=6,7
      IDEF=J(N)-JJ(N)
      IF(IDEF.EQ.0) WRITE(6,132) J(N),JJ(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) J(N),JJ(N),IDEF
  142 CONTINUE
C
      DO 144 N=1,7
      ITEM=ITEM+1
      IDEF=K(N)-KK(N)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,K(N),KK(N),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,K(N),KK(N),IDEF
  144 CONTINUE
      ITEM=ITEM+1
      IDEF=L(1)-LL(1)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,L(1),LL(1),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,L(1),LL(1),IDEF
      DO 146 N=2,4
      IDEF=L(N)-LL(N)
      IF(IDEF.EQ.0) WRITE(6,132) L(N),LL(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) L(N),LL(N),IDEF
  146 CONTINUE
      ITEM=ITEM+1
      IDEF=L(5)-LL(5)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,L(5),LL(5),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,L(5),LL(5),IDEF
      DO 143 N=6,7
      IDEF=L(N)-LL(N)
      IF(IDEF.EQ.0) WRITE(6,132) L(N),LL(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) L(N),LL(N),IDEF
  143 CONTINUE
      WRITE(6,301)
      IF(ITEST.EQ.1) WRITE(6,302)
      IF(ITEST.EQ.2) WRITE(6,306)
      WRITE(6,305)
  305 FORMAT(/30X,18H* INPUT (DOUBLE) */)
      WRITE(6,122)
C
      DO 147 N=1,12
      ITEM=ITEM+1
      IDEF=ID(N)-IID(N)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,ID(N),IID(N),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,ID(N),IID(N),IDEF
  147 CONTINUE
      ITEM=ITEM+1
      IDEF=JD(1)-JJD(1)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,JD(1),JJD(1),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,JD(1),JJD(1),IDEF
      DO 148 N=2,5
      IDEF=JD(N)-JJD(N)
      IF(IDEF.EQ.0) WRITE(6,132) JD(N),JJD(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) JD(N),JJD(N),IDEF
  148 CONTINUE
      ITEM=ITEM+1
      IDEF=JD(6)-JJD(6)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,JD(6),JJD(6),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,JD(6),JJD(6),IDEF
      DO 152 N=7,9
      IDEF=JD(N)-JJD(N)
      IF(IDEF.EQ.0) WRITE(6,132) JD(N),JJD(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) JD(N),JJD(N),IDEF
  152 CONTINUE
      ITEM=ITEM+1
      IDEF=JD(10)-JJD(10)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,JD(10),JJD(10),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,JD(10),JJD(10),IDEF
      DO 154 N=11,12
      IDEF=JD(N)-JJD(N)
      IF(IDEF.EQ.0) WRITE(6,132) JD(N),JJD(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) JD(N),JJD(N),IDEF
  154 CONTINUE
      DO 156 N=1,12
      ITEM=ITEM+1
      IDEF=KD(N)-KKD(N)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,KD(N),KKD(N),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,KD(N),KKD(N),IDEF
  156 CONTINUE
C
      ITEM=ITEM+1
      IDEF=LD(1)-LLD(1)
      IF(IDEF.NE.0) WRITE(6,126) ITEM,LD(1),LLD(1),IDEF
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,LD(1),LLD(1),IDEF
      DO 158 N=2,5
      IDEF=LD(N)-LLD(N)
      IF(IDEF.EQ.0) WRITE(6,132) LD(N),LLD(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) LD(N),LLD(N),IDEF
  158 CONTINUE
      ITEM=ITEM+1
      IDEF=LD(6)-LLD(6)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,LD(6),LLD(6),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,LD(6),LLD(6),IDEF
      DO 162 N=7,9
      IDEF=LD(N)-LLD(N)
      IF(IDEF.EQ.0) WRITE(6,132) LD(N),LLD(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) LD(N),LLD(N),IDEF
  162 CONTINUE
      ITEM=ITEM+1
      IDEF=LD(10)-LLD(10)
      IF(IDEF.EQ.0) WRITE(6,124) ITEM,LD(10),LLD(10),IDEF
      IF(IDEF.NE.0) WRITE(6,126) ITEM,LD(10),LLD(10),IDEF
      DO 164 N=11,12
      IDEF=LD(N)-LLD(N)
      IF(IDEF.EQ.0) WRITE(6,132) LD(N),LLD(N),IDEF
      IF(IDEF.NE.0) WRITE(6,134) LD(N),LLD(N),IDEF
  164 CONTINUE
C
C
      IF(ITEST.NE.1) GO TO 166
      I(1)= 32767
      J(1)=-32767
      J(2)=-32767
      ID(1)= 2147483647
      JD(1)=-2147483647
      GO TO 168
  166 I(1)=12345
      J(1)=-12345
      J(2)=-12345
      ID(1)=1234567891
      JD(1)=-1234567891
  168 CONTINUE
C
C
      WRITE(6,301)
      IF(ITEST.EQ.1) WRITE(6,302)
      IF(ITEST.EQ.2) WRITE(6,306)
      WRITE(6,404)
  404 FORMAT(/30X,19H* OUTPUT (SINGLE) */)
      WRITE(6,169)
  169 FORMAT(15X,8H- ITEM -,8X,20H- COMPUTED  RESULT -,27X,
     -       18H- COMPARE  VALUE -,/)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
  410 FORMAT(1H0,16X,1H(,I3,1H),10X,1H',35X,1H',10X,1H',35X,1H')
      WRITE(6,172) I(1)
      WRITE(6,601)
  601 FORMAT(1H+,79X,1H*)
  172 FORMAT(1H+,32X,I1)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,174) I(1)
      WRITE(6,602)
  602 FORMAT(1H+,79X,2H**)
  174 FORMAT(1H ,32X,I2)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,176) I(1)
      WRITE(6,603)
  603 FORMAT(1H+,79X,3H***)
  176 FORMAT(1H+,32X,I3)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,178) I(1)
      WRITE(6,604)
  604 FORMAT(1H+,79X,4H****)
  178 FORMAT(1H+,32X,I4)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,180) I(1)
      IF(ITEST.EQ.2) GO TO 2000
      WRITE(6,605)
      GO TO 10
 2000 WRITE(6,800)
  800 FORMAT(1H+,79X,5H12345)
  605 FORMAT(1H+,79X,5H32767)
  180 FORMAT(1H+,32X,I5)
   10 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,182) I(1)
      IF(ITEST.EQ.2) GO TO 2010
      WRITE(6,606)
      GO TO 11
 2010 WRITE(6,801)
  801 FORMAT(1H+,79X,6H 12345)
  606 FORMAT(1H+,79X,6H 32767)
  182 FORMAT(1H+,32X,I6)
   11 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,184) I(1)
      IF(ITEST.EQ.2) GO TO 2020
      WRITE(6,607)
      GO TO 900
 2020 WRITE(6,802)
  802 FORMAT(1H+,79X,7H  12345)
  607 FORMAT(1H+,79X,7H  32767)
  184 FORMAT(1H+,32X,I7)
  900 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,186) I(1),I(1),I(1),I(1),I(1),I(1),I(1)
      IF(ITEST.EQ.2) GO TO 2030
      WRITE(6,608)
      GO TO 905
 2030 WRITE(6,803)
  803 FORMAT(1H+,79X,28H**********12345 12345  12345)
  608 FORMAT(1H+,79X,28H**********32767 32767  32767)
  186 FORMAT(1H+,32X,I1,I2,I3,I4,I5,I6,I7)
  905 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,188) J(1)
      WRITE(6,602)
  188 FORMAT(1H+,32X,I2)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,190) J(2)
      WRITE(6,603)
  190 FORMAT(1H+,32X,I3)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,192) J(2)
      WRITE(6,604)
  192 FORMAT(1H+,32X,I4)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,194) J(2)
      WRITE(6,609)
  609 FORMAT(1H+,79X,5H*****)
  194 FORMAT(1H+,32X,I5)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,196) J(2)
      IF(ITEST.EQ.2) GO TO 2040
      WRITE(6,610)
      GO TO 910
 2040 WRITE(6,804)
  804 FORMAT(1H+,79X,6H-12345)
  610 FORMAT(1H+,79X,6H-32767)
  196 FORMAT(1H+,32X,I6)
  910 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,198) J(2)
      IF(ITEST.EQ.2) GO TO 2050
      WRITE(6,611)
      GO TO 913
  611 FORMAT(1H+,79X,7H -32767)
  198 FORMAT(1H+,32X,I7)
 2050 WRITE(6,805)
  805 FORMAT(1H+,79X,7H -12345)
  913 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,200) J(2)
      IF(ITEST.EQ.2) GO TO 2060
      WRITE(6,612)
  612 FORMAT(1H+,79X,8H  -32767)
  200 FORMAT(1H+,32X,I8)
      GO TO 915
 2060 WRITE(6,806)
  806 FORMAT(1H+,79X,8H  -12345)
  915 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,202) J(1),J(1),J(1),J(1),J(1),J(1),J(1)
      IF(ITEST.EQ.2) GO TO 2070
      WRITE(6,613)
  613 FORMAT(1H+,79X,35H**************-32767 -32767  -32767)
  202 FORMAT(1H+,32X,I2,I3,I4,I5,I6,I7,I8)
      GO TO 17
 2070 WRITE(6,807)
  807 FORMAT(1H+,79X,35H**************-12345 -12345  -12345)
C
C
   17 WRITE(6,301)
      IF(ITEST.EQ.1) WRITE(6,302)
      IF(ITEST.EQ.2) WRITE(6,306)
      WRITE(6,405)
  405 FORMAT(/30X,19H* OUTPUT (DOUBLE) */)
      WRITE(6,169)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,204) ID(1)
      WRITE(6,601)
  204 FORMAT(1H+,32X,I1)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,206) ID(1)
      WRITE(6,602)
  206 FORMAT(1H+,32X,I2)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,208) ID(1)
      WRITE(6,603)
  208 FORMAT(1H+,32X,I3)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,210) ID(1)
      WRITE(6,604)
  210 FORMAT(1H+,32X,I4)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,212) ID(1)
      WRITE(6,609)
  212 FORMAT(1H+,32X,I5)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,214) ID(1)
      WRITE(6,614)
  614 FORMAT(1H+,79X,6H******)
  214 FORMAT(1H+,32X,I6)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,216) ID(1)
      WRITE(6,615)
  615 FORMAT(1H+,79X,7H*******)
  216 FORMAT(1H+,32X,I7)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,218) ID(1)
      WRITE(6,616)
  616 FORMAT(1H+,79X,8H********)
  218 FORMAT(1H+,32X,I8)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,220) ID(1)
      WRITE(6,617)
  617 FORMAT(1H+,79X,9H*********)
  220 FORMAT(1H+,32X,I9)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,222) ID(1)
      IF(ITEST.EQ.2) GO TO 2080
      WRITE(6,618)
  618 FORMAT(1H+,79X,10H2147483647)
  222 FORMAT(1H+,32X,I10)
      GO TO 920
 2080 WRITE(6,808)
  808 FORMAT(1H+,79X,10H1234567891)
  920 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,224) ID(1)
      IF(ITEST.EQ.2) GO TO 2090
      WRITE(6,619)
  619 FORMAT(1H+,79X,11H 2147483647)
  224 FORMAT(1H+,32X,I11)
      GO TO 925
 2090 WRITE(6,809)
  809 FORMAT(1H+,79X,11H 1234567891)
  925 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,226) ID(1)
      IF(ITEST.EQ.2) GO TO 2100
      WRITE(6,620)
  620 FORMAT(1H+,79X,12H  2147483647)
  226 FORMAT(1H+,32X,I12)
      GO TO 930
 2100 WRITE(6,810)
  810 FORMAT(1H+,79X,12H  1234567891)
  930 ITEM=ITEM+1
      WRITE(6,621) ITEM
      WRITE(6,228) ID(1),ID(1),ID(1),ID(1),ID(1),ID(1),ID(1),
     1             ID(1),ID(1),ID(1),ID(1),ID(1)
  228 FORMAT(1H+,32X,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12)
      IF(ITEST.EQ.2) GO TO 2110
      WRITE(6,622)
  621 FORMAT(1H0,16X,1H(,I3,1H),10X,1H',90X,1H')
  622 FORMAT(1H ,31X,1H',45(1H*),
     -    33H2147483647 2147483647  2147483647,12X,1H')
      GO TO 21
 2110 WRITE(6,811)
  811 FORMAT(1H ,31X,1H',45(1H*),
     *      33H1234567891 1234567891  1234567891,12X,1H')
   21 WRITE(6,301)
      WRITE(6,169)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,230) JD(1)
      WRITE(6,602)
  230 FORMAT(1H+,32X,I2)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,232) JD(1)
      WRITE(6,603)
  232 FORMAT(1H+,32X,I3)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,234) JD(1)
      WRITE(6,604)
  234 FORMAT(1H+,32X,I4)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,236) JD(1)
      WRITE(6,609)
  236 FORMAT(1H+,32X,I5)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,238) JD(1)
      WRITE(6,614)
  238 FORMAT(1H+,32X,I6)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,240) JD(1)
      WRITE(6,615)
  240 FORMAT(1H+,32X,I7)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,242) JD(1)
      WRITE(6,616)
  242 FORMAT(1H+,32X,I8)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,244) JD(1)
      WRITE(6,617)
  244 FORMAT(1H+,32X,I9)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,246) JD(1)
      WRITE(6,623)
  623 FORMAT(1H+,79X,10H**********)
  246 FORMAT(1H+,32X,I10)
      ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,248) JD(1)
      IF(ITEST.EQ.2) GO TO 2120
      WRITE(6,624)
  624 FORMAT(1H+,79X,11H-2147483647)
  248 FORMAT(1H+,32X,I11)
      GO TO 935
 2120 WRITE(6,812)
  812 FORMAT(1H+,79X,11H-1234567891)
  935 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,250) JD(1)
      IF(ITEST.EQ.2) GO TO 2130
      WRITE(6,625)
  625 FORMAT(1H+,79X,12H -2147483647)
  250 FORMAT(1H+,32X,I12)
      GO TO 23
 2130 WRITE(6,813)
  813 FORMAT(1H+,79X,12H -1234567891)
   23 ITEM=ITEM+1
      WRITE(6,410) ITEM
      WRITE(6,252) JD(1)
      IF(ITEST.EQ.2) GO TO 2140
      WRITE(6,626)
  626 FORMAT(1H+,79X,13H  -2147483647)
  252 FORMAT(1H+,32X,I13)
      GO TO 940
 2140 WRITE(6,814)
  814 FORMAT(1H+,79X,13H  -1234567891)
  940 ITEM=ITEM+1
      WRITE(6,621)  ITEM
      WRITE(6,254) JD(1),JD(1),JD(1),JD(1),JD(1),JD(1),JD(1),JD(1),
     1             JD(1),JD(1),JD(1),JD(1)
  254 FORMAT(1H+,32X,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13)
      IF(ITEST.EQ.2) GO TO 2150
      WRITE(6,627)
  627 FORMAT(1H ,31X,1H',54(1H*),36H-2147483647 -2147483647  -2147483647
     *,1H')
      GO TO 1000
 2150 WRITE(6,815)
  815 FORMAT(1H ,31X,1H',54(1H*),
     *       36H-1234567891 -1234567891  -1234567891,1H')
C
 1000 CONTINUE
  500 FORMAT(1H0,6X,24H*FORTRAN*          EXIT  / )
      WRITE(6,500)
      STOP
      END