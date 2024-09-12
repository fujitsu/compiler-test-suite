      IMPLICIT INTEGER(A-H,O-Z)
      DIMENSION          C   (10),D   (10),E   (10),F   (10)
      DIMENSION A001(10),A002(10),A003(10),A004(10),A005(10)
      DIMENSION A006(10),A007(10),A008(10),A009(10),A010(10)
      DIMENSION A011(10),A012(10),A013(10),A014(10),A015(10)
      DIMENSION A016(10),A017(10),A018(10),A019(10),A020(10)
      DIMENSION A021(10),A022(10),A023(10),A024(10),A025(10)
      DIMENSION A026(10),A027(10),A028(10),A029(10),A030(10)
      DIMENSION A031(10),A032(10),A033(10),A034(10),A035(10)
      DIMENSION A036(10)
      DIMENSION B001(10),B002(10),B003(10),B004(10),B005(10)
      DIMENSION B006(10),B007(10),B008(10),B009(10),B010(10)
      DIMENSION B011(10),B012(10),B013(10),B014(10),B015(10)
      DIMENSION B016(10),B017(10),B018(10),B019(10),B020(10)
      DIMENSION B021(10),B022(10),B023(10),B024(10),B025(10)
      DIMENSION B026(10),B027(10),B028(10),B029(10),B030(10)
      DIMENSION B031(10),B032(10),B033(10),B034(10),B035(10)
      DIMENSION B036(10)
      DIMENSION C001(10),C002(10),C003(10),C004(10),C005(10)
      DIMENSION C006(10),C007(10),C008(10),C009(10),C010(10)
      DIMENSION C011(10),C012(10),C013(10),C014(10),C015(10)
      DIMENSION C016(10),C017(10),C018(10),C019(10),C020(10)
      DIMENSION C021(10),C022(10),C023(10),C024(10),C025(10)
      DIMENSION C026(10),C027(10),C028(10),C029(10),C030(10)
      DIMENSION C031(10),C032(10),C033(10),C034(10),C035(10)
      DIMENSION C036(10)
      INTEGER*4 N/1 /,M/9 /

      DO 1  I=1,10
        A001(I)=I
        A001(I)=I
        A002(I)=I
        A003(I)=I
        A004(I)=I
        A005(I)=I
        A006(I)=I
        A007(I)=I
        A008(I)=I
        A009(I)=I
        A010(I)=I
        A011(I)=I
        A012(I)=I
        A013(I)=I
        A014(I)=I
        A015(I)=I
        A016(I)=I
        A017(I)=I
        A018(I)=I
        A019(I)=I
        A020(I)=I
        A021(I)=I
        A022(I)=I
        A023(I)=I
        A024(I)=I
        A025(I)=I
        A026(I)=I
        A027(I)=I
        A028(I)=I
        A029(I)=I
        A030(I)=I
        A031(I)=I
        A032(I)=I
        A033(I)=I
        A034(I)=I
        A035(I)=I
        A036(I)=I
        B001(I)=I
        B002(I)=I
        B003(I)=I
        B004(I)=I
        B005(I)=I
        B006(I)=I
        B007(I)=I
        B008(I)=I
        B009(I)=I
        B010(I)=I
        B011(I)=I
        B012(I)=I
        B013(I)=I
        B014(I)=I
        B015(I)=I
        B016(I)=I
        B017(I)=I
        B018(I)=I
        B019(I)=I
        B020(I)=I
        B021(I)=I
        B022(I)=I
        B023(I)=I
        B024(I)=I
        B025(I)=I
        B026(I)=I
        B027(I)=I
        B028(I)=I
        B029(I)=I
        B030(I)=I
        B031(I)=I
        B032(I)=I
        B033(I)=I
        B034(I)=I
        B035(I)=I
        B036(I)=I
        C001(I)=I
        C002(I)=I
        C003(I)=I
        C004(I)=I
        C005(I)=I
        C006(I)=I
        C007(I)=I
        C008(I)=I
        C009(I)=I
        C010(I)=I
        C011(I)=I
        C012(I)=I
        C013(I)=I
        C014(I)=I
        C015(I)=I
        C016(I)=I
        C017(I)=I
        C018(I)=I
        C019(I)=I
        C020(I)=I
        C021(I)=I
        C022(I)=I
        C023(I)=I
        C024(I)=I
        C025(I)=I
        C026(I)=I
        C027(I)=I
        C028(I)=I
        C029(I)=I
        C030(I)=I
        C031(I)=I
        C032(I)=I
        C033(I)=I
        C034(I)=I
        C035(I)=I
        C036(I)=I
  1   CONTINUE
      DO 2 I=1,M
      B=I
      C(I)=I
      D(I)=I-1
      E(I)=I
2     F(I)=1
      DO 100 I=1,M-1
        A001(I)=  C001(I)-C(I)*B
        A002(I)=  A001(I)-D(I)*B
        A003(I)=  A002(I)-E(I)*B
        A004(I)=  A003(I)-C(I)*B
        A005(I)=  A004(I)-D(I)*B
        B001(I)=  A005(I)-E(I)*B
        B002(I)=  B001(I)-F(I)*B
        B003(I)=  B002(I)-C(I)*B
        B004(I)=  B003(I)-D(I)*B
        B005(I)=  B004(I)-E(I)*B
        C001(I)=  B005(I)-F(I)*B
        C002(I)=  C001(I)-C(I)*B
        C003(I)=  C002(I)-D(I)*B
        C004(I)=  C003(I)-E(I)*B
        C005(I)=  C004(I)-F(I)*B
        C006(I)=  C005(I)-C(I)*B
        A011(I)=  C006(I)-C(I)*B
        A012(I)=B*A012(I)-D(I)
        A013(I)=B*A013(I)-E(I)
        A014(I)=B*A014(I)-F(I)
        A015(I)=B*A015(I)-D(I)
        B011(I)=  C   (I)-F(I)*1
        B012(I)=  C   (I)-F(I)*2
        B013(I)=  C   (I)-C(I)*3
        B014(I)=  C   (I)-C(I)*4
        B015(I)=  C   (I)-F(I)*B
        C011(I)=  C   (I)-F(I)*5.5
        C012(I)=  C   (I)-F(I)*5
        C013(I)=  C   (I)-F(I)*6
        C014(I)=  C   (I)-F(I)*7
        C015(I)=  C   (I)-F(I)*8
        C016(I)=  C   (I)-F(I)*9
        A021(I)=  C   (I)-F(I)*10
        A022(I)=  C   (I)-F(I)*11
        A023(I)=  C   (I)-F(I)*12
        A024(I)=B*C   (I)-F(I)*13
        A025(I)=B*C   (I)-F(I)*14*B
        B021(I)=B*C   (I)-F(I)*15
        B022(I)=B*C022(I)-F(I)*16
        B023(I)=B*C023(I)-F(I)
        B024(I)=B*C024(I)-F(I)
        B025(I)=B*C025(I)-F(I)
        C021(I)=B*C021(I)-F(I)
        C022(I)=B*C022(I)-F(I)
        C023(I)=B*C023(I)-C(I)
        C024(I)=B*C024(I)-C(I)
        C025(I)=B*C025(I)-E(I)
        C026(I)=B*C026(I)-E(I)
        A031(I)=B*C031(I)-E(I)
        A032(I)=B*C032(I)-E(I)
        A033(I)=B*C033(I)-E(I)
        A034(I)=B*C034(I)-E(I)
        A035(I)=B*C035(I)-E(I)
        B031(I)=B*C031(I)-E(I)
        B032(I)=B*C032(I)-E(I)
        B033(I)=B*C033(I)-E(I)
        B034(I)=B*C034(I)-C(I)
        B035(I)=B*C035(I)-C(I)
        C031(I)=B*C031(I)-C(I)
        C032(I)=B*C032(I)-C(I)
        C033(I)=B*C033(I)+C(I)
        C034(I)=B*C034(I)-C(I)
        C035(I)=B*C   (I)+C(I)
        C036(I)=B*C036(I)-C(I)
 100  CONTINUE

      WRITE(6,*)A001 ,A002 ,A003 ,A004 ,A005
      WRITE(6,*)A006 ,A007 ,A008 ,A009 ,A010
      WRITE(6,*) A011 ,A012 ,A013 ,A014 ,A015
      WRITE(6,*) A016 ,A017 ,A018 ,A019 ,A020
      WRITE(6,*) A021 ,A022 ,A023 ,A024 ,A025
      WRITE(6,*) A026 ,A027 ,A028 ,A029 ,A030
      WRITE(6,*) A031 ,A032 ,A033 ,A034 ,A035
      WRITE(6,*) A036
      WRITE(6,*) B001 ,B002 ,B003 ,B004 ,B005
      WRITE(6,*) B006 ,B007 ,B008 ,B009 ,B010
      WRITE(6,*) B011 ,B012 ,B013 ,B014 ,B015
      WRITE(6,*) B016 ,B017 ,B018 ,B019 ,B020
      WRITE(6,*) B021 ,B022 ,B023 ,B024 ,B025
      WRITE(6,*) B026 ,B027 ,B028 ,B029 ,B030
      WRITE(6,*) B031 ,B032 ,B033 ,B034 ,B035
      WRITE(6,*) B036
      WRITE(6,*) C001 ,C002 ,C003 ,C004 ,C005
      WRITE(6,*) C006 ,C007 ,C008 ,C009 ,C010
      WRITE(6,*) C011 ,C012 ,C013 ,C014 ,C015
      WRITE(6,*) C016 ,C017 ,C018 ,C019 ,C020
      WRITE(6,*) C021 ,C022 ,C023 ,C024 ,C025
      WRITE(6,*) C026 ,C027 ,C028 ,C029 ,C030
      WRITE(6,*) C031 ,C032 ,C033 ,C034 ,C035
      WRITE(6,*) C036
      STOP
      END
