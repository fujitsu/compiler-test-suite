      INTEGER A001(100),B001(100),C001(100)
      INTEGER D001(4000),E001(4000),F001(4000)
      INTEGER A002(3,3),B002(3,3),C002(3,3)
      INTEGER A003(200,300,1),B003(200,300,1,1,1,1)
      INTEGER                 C003(20,1,300,1,1,1,20)
      INTEGER D002(30,200),E002(30,200),F002(30,100)
      INTEGER G001,G002
      REAL A004(100),B004(100),C004(100)
      REAL D004(4000),E004(4000),F004(4000)
      REAL A005(3,3),B005(3,3),C005(3,3)
      REAL A006(20,300,1),B006(20,300,1,1,1,1)
      REAL                    C006(20,1,300,1,1,1,2)
      REAL D005(30,200),E005(30,200),F005(30,100)
      REAL G004,G005
      DATA  A001,B001,C001/100*4, 100*2, 100*3/
      DATA  D001,E001,F001/4000*4, 4000*2, 4000*3/
      DATA  A002,B002,C002/9*4, 9*2, 9*3/
      DATA  D002,E002,F002/6000*4, 6000*2, 3000*3/
      DATA  A003,B003,C003/60000*4, 60000*2, 120000*3/
      DATA  A004,B004,C004/100*4.0, 100*2.0, 100*3.0/
      DATA  D004,E004,F004/4000*4.0, 4000*2.0, 4000*3.0/
      DATA  A005,B005,C005/9*4.0, 9*2.0, 9*3.0/
      DATA  D005,E005,F005/6000*4.0, 6000*2.0, 3000*3.0/
      DATA  A006,B006,C006/6000*4.0, 6000*2.0, 12000*3.0/
      DO 101 I=1,99
      DO 101 J=1,99
        G001   =A001(I)
        A001(I)=B001(I)+C001(I)
  101 CONTINUE
      DO 102 I=3,99
      DO 102 J=3,99
        G001   =B001(J)*C001(J)
        A001(I)=G001
        B001(J)=A001(I)/C001(I)
        A001(I)=G001
        A001(I)=B001(J)/C001(I)
  102 CONTINUE
      DO 103 J=1,97
      DO 103 I=1,97
        A001(I)=MOD(B001(J),C001(J))
  103 CONTINUE
      DO 104 J=1,39
      DO 104 I=1,3990
        G001   =D001(I)
        D001(I)=E001(I)+F001(I)
  104 CONTINUE
      DO 105 J=3,399
      DO 105 I=3,39
        G001   =E001(I)*F001(I)
        D001(I)=G001
        E001(I)=D001(I)/F001(I)
        D001(I)=G001
        D001(I)=E001(I)/F001(J)
  105 CONTINUE
      DO 106 J=1,40
      DO 106 I=1,4000
        D001(I)=MOD(E001(J),F001(I))
  106 CONTINUE
      DO 107 I=1,2
      DO 107 J=1,2
        G002   =A002(J,I)
        A002(J,I)=G002+C002(J,I)
  107 CONTINUE
      DO 108 I=3,3
      DO 108 J=3,3
        G002   =B002(J,I)*C002(J,I)
        A002(J,I)=G002
        B002(J,I)=A002(J,I)/C002(J,I)
        A002(J,I)=G002
        A002(J,I)=B002(J,I)/C002(J,I)
  108 CONTINUE
      DO 109 I=1,3
      DO 109 J=1,2
        A002(J,I)=MOD(B002(J,I),C002(J,I))
  109 CONTINUE
      DO 110 J=1,98
      DO 110 I=1,28
        G002   =E002(I,J)
        D002(I,J)=G002+F002(I,J)
  110 CONTINUE
      DO 111 J=3,55
      DO 111 I=3,29
        G002   =E002(I,J)*F002(I,J)
        D002(I,J)=G002
        E002(I,J)=D002(I,J)/F002(I,1)
        D002(I,J)=G002
        D002(I,J)=E002(I,J)/F002(I,6)
  111 CONTINUE
      DO 112 J=1,100
      DO 112 I=1,30
        D002(I,J)=MOD(E002(I,J),F002(I,J))
  112 CONTINUE
      DO 113 I=1,300
      DO 113 J=1,20
        G001   =A003(J,I,1)
        A003(J,I,1)=G001+C003(J,1,I,1,1,1,J)
  113 CONTINUE
      DO 114 I=1,300
      DO 114 J=1,200
        G001   =B003(J,I,1,1,1,1)*C003(1,1,I,1,1,1,2)
        A003(J,I,1)=G001
        B003(J,I,1,1,1,1)=A003(J,I,1)/C003(1,1,I,1,1,1,1)
        G001   =B003(J,I,1,1,1,1)*C003(1,1,1,1,1,1,2)
        A003(J,I,1)=G001
        A003(J,I,1)=B003(J,I,1,1,1,1)/C003(2,1,1,1,1,1,1)
  114 CONTINUE
      DO 115 I=1,300
      DO 115 J=1,19
        A003(J,I,1)=MOD(B003(J,I,1,1,1,1),C003(J,1,1,1,1,1,1))
  115 CONTINUE
      DO 116 I=1,99
      DO 116 J=1,99
        G004   =SQRT(A004(I))
        A004(I)=B004(I)+SQRT(C004(I))
  116 CONTINUE
      DO 117 J=3,99
      DO 117 I=3,99
        G004   =B004(I)*C004(I)
        A004(I)=G004
        B004(I)=A004(I)/SQRT(C004(I))
        A004(I)=ABS(G004)
        A004(I)=B004(I)/C004(I)
  117 CONTINUE
      DO 118 J=1,400
      DO 118 I=1,97
        A004(I)=MOD(B004(I),C004(I))
  118 CONTINUE
      DO 119 J=1,6
      DO 119 I=1,3990
        G004   =SIN(D004(I))
        D004(I)=COS(E004(I)+F004(I))
  119 CONTINUE
      DO 120 I=3,3998
      DO 120 J=3,9
        G004   =E004(I)*F004(I)
        D004(I)=G004
        E004(I)=D004(I)/F004(I)
        D004(I)=G004
        D004(I)=E004(I)/F004(I)
  120 CONTINUE
      DO 121 J=1,4
      DO 121 I=1,4000
        D004(I)=MOD(E004(I),F004(I))
  121 CONTINUE
      DO 122 I=1,2
      DO 122 J=1,2
        G005   =A005(J,I)
        A005(J,I)=G005+C005(J,I)
  122 CONTINUE
      DO 123 I=3,3
      DO 123 J=3,3
        G005   =B005(J,I)*C005(J,I)
        A005(J,I)=G005
        B005(J,I)=A005(2,I)/C005(J,I)
        A005(J,I)=G005
        A005(J,I)=B005(J,I)/C005(J,I)
  123 CONTINUE
      DO 124 I=1,3
      DO 124 J=1,3
        A005(J,I)=MOD(B005(J,I),C005(J,I))
  124 CONTINUE
      DO 125 J=1,100
      DO 125 I=1,30
        G005   =E005(I,J)
        D005(I,J)=G005+F005(I,J)
  125 CONTINUE
      DO 126 J=3,100
      DO 126 I=3,29
        G005   =E005(I,J)*F005(I,1)
        D005(I,J)=G005
        E005(I,J)=D005(I,J)/F005(I,1)
        D005(I,J)=G005
        D005(I,J)=E005(I,J)*F005(I,1)
  126 CONTINUE
      DO 127 J=1,99
      DO 127 I=1,30
        D005(I,J)=MOD(E005(I,J),F005(I,J))
  127 CONTINUE
      DO 128 I=1,300
      DO 128 J=1,20
        G004   =A006(J,I,1)
        A006(J,I,1)=G004+C006(J,1,I,1,1,1,1)
  128 CONTINUE
      DO 129 J=1,19
      DO 129 I=1,299
        G004   =B006(J,I,1,1,1,1)*C006(J,1,I,1,1,1,2)
        A006(J,I,1)=G004
        B006(J,I,1,1,1,1)=A006(J,I,1)/C006(J,1,I,1,1,1,1)
        G004   =B006(J,I,1,1,1,1)*C006(J,1,I,1,1,1,2)
        A006(J,I,1)=G004
        A006(J,I,1)=B006(J,I,1,1,1,1)/C006(J,1,I,1,1,1,1)
  129 CONTINUE
      DO 130 J=1,20
      DO 130 I=1,299
        A006(J,I,1)=MOD(B006(J,I,1,1,1,1),C006(J,1,I,1,1,1,1))
  130 CONTINUE

      DO I=1,100,10
        IF (A001(I).NE.2) PRINT *,'NG1'
      ENDDO
      DO I=1,1000,100
        IF (D001(I).NE.2) PRINT *,'NG2 '
      ENDDO
      IF (A002(1,1).NE.2 .AND. A002(2,1).NE.2 .AND.
     1    A002(3,1).NE.4) PRINT *,'NG3-1'
      IF (A002(1,2).NE.2 .AND. A002(2,2).NE.2 .AND.
     2    A002(3,2).NE.4) PRINT *,'NG3-2'
      IF (A002(1,3).NE.2 .AND. A002(2,3).NE.2 .AND.
     3    A002(3,3).NE.0) PRINT *,'NG3-3'
      DO I=1,100,20
        DO J=1,30
          IF (D002(J,I).NE.2) PRINT *,'NG4-1'
        ENDDO
      ENDDO
      DO I=101,200,20
        DO J=1,30
          IF (D002(J,I).NE.4) PRINT *,'NG4-2'
        ENDDO
      ENDDO
      DO K=1,20,20
        DO I=1,1
          DO J=1,30,30
            IF (A003(K,J,I).NE.2) PRINT *,'NG5-1'
          ENDDO
        ENDDO
      ENDDO
      DO K=21,200,20
        DO I=1,1
          DO J=1,300,30
            IF (A003(K,J,I).NE.0) PRINT *,'NG5-2'
          ENDDO
        ENDDO
      ENDDO
      IF (A004(1).NE.2.00000000) PRINT *,'NG6-1'
      DO I=11,100,10
        IF (ABS(A004(I)-(-1.80143985E+16)).GT.1.0E+17) PRINT *,'NG6-2'
      ENDDO
      DO I=1,1000,100
        IF (D004(I).NE.2.00000000) PRINT *,'NG7'
      ENDDO
      IF (A005(1,1).NE.2.00000000) PRINT *,'NG8-1'
      IF (A005(2,1).NE.2.00000000) PRINT *,'NG8-2'
      IF (A005(3,1).NE.2.00000000) PRINT *,'NG8-3'
      IF (A005(1,2).NE.2.00000000) PRINT *,'NG8-4'
      IF (A005(2,2).NE.2.00000000) PRINT *,'NG8-5'
      IF (A005(3,2).NE.2.00000000) PRINT *,'NG8-6'
      IF (A005(1,3).NE.2.00000000) PRINT *,'NG8-7'
      IF (A005(2,3).NE.2.00000000) PRINT *,'NG8-8'
      IF (A005(3,3).NE.1.33333337) PRINT *,'NG8-9'
      DO I=1,100,20
        DO J=1,30
          IF (D005(J,I).NE.2.00000000) PRINT *,'NG9-1'
        ENDDO
      ENDDO
      DO I=101,200,20
        DO J=1,30
          IF (D005(J,I).NE.4.00000000) PRINT *,'NG9-2'
        ENDDO
      ENDDO
      DO K=1,20,5
        DO I=1,1
          DO J=1,300,30
            IF (A006(K,J,I).NE.2.00000000) PRINT *,'NG10'
          ENDDO
        ENDDO
      ENDDO
      PRINT *,'*** OK ***'
      END
