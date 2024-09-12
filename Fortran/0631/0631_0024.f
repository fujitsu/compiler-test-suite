      INTEGER A001(100),B001(100),C001(100)
      INTEGER D001(4000),E001(4000),F001(4000)
      INTEGER A002(3,3),B002(3,3),C002(3,3)
      INTEGER A003(200,30,10),B003(20,30,10,10,1,1)
      INTEGER                 C003(20,1,300,1,1,1,20)
      INTEGER D002(300,200),E002(300,200),F002(300,100)
      INTEGER G001,G002
      REAL A004(100)
      REAL A005(3,3),B005(3,3),C005(3,3)
      REAL A006(20,30,10,10),B006(20,30,10,10,1,1)
      REAL                    C006(20,1,30,10,10,1,2)
      REAL G004,G005
      INTEGER A04(100)
      INTEGER A05(3,3)
      INTEGER A06(20,30,10,10)
      DATA  A001,B001,C001/100*4, 100*2, 100*3/
      DATA  D001,E001,F001/4000*4, 4000*2, 4000*3/
      DATA  A002,B002,C002/9*4, 9*2, 9*3/
      DATA  D002,E002,F002/60000*4, 60000*2, 30000*3/
      DATA  A003,B003,C003/60000*4, 60000*2, 120000*3/
      DATA  A004/100*4.0/
      DATA  A005,B005,C005/9*4.0, 9*2.0, 9*3.0/
      DATA  A006,B006,C006/60000*4.0, 60000*2.0, 120000*3.0/
      DO 101 I=1,99
      DO 101 J=1,9
      DO 101 K=1,9
        G001   =A001(I)
        A001(I)=B001(I)+C001(I)
  101 CONTINUE
      DO 102 L=3,6
      DO 102 J=3,99
      DO 102 K=3,4
      DO 102 I=3,99
        G001   =B001(J)*C001(J)
        A001(I)=G001
        B001(I)=A001(I)/C001(I)
        A001(I)=G001
        A001(I)=B001(I)/C001(I)
  102 CONTINUE
      DO 103 J=1,97
      DO 103 I=1,50
      DO 103 K=1,10
        A001(I)=MOD(B001(J),C001(J))
  103 CONTINUE
      DO 104 K=1,3
      DO 104 J=1,5
      DO 104 I=1,3990
        G001   =D001(I)
        D001(I)=E001(I)+F001(I)
  104 CONTINUE
      DO 105 K=3,7
      DO 105 J=3,3
      DO 105 I=3,399
        G001   =E001(I)*F001(I)
        D001(I)=G001
        E001(I)=D001(I)/F001(I)
        D001(I)=G001
        D001(I)=E001(I)/F001(I)
  105 CONTINUE
      DO 106 K=1,4
      DO 106 J=1,4
      DO 106 I=1,1000
        D001(I)=MOD(E001(J),F001(I))
  106 CONTINUE
      DO 107 K=1,2
      DO 107 I=1,2
      DO 107 J=1,2
        G002   =A002(J,I)
        A002(J,I)=G002+C002(J,I)
  107 CONTINUE
      DO 108 K=3,3
      DO 108 I=3,3
      DO 108 J=3,3
        G002   =B002(J,I)*C002(J,I)
        A002(J,I)=G002
        B002(J,I)=A002(J,I)/C002(J,I)
        A002(J,I)=G002
        A002(J,I)=B002(J,I)/C002(J,I)
  108 CONTINUE
      DO 109 K=1,10
      DO 109 J=1,3
      DO 109 I=1,2
        A002(J,I)=MOD(B002(J,I),C002(J,I))
  109 CONTINUE
      DO 110 K=1,10
      DO 110 J=1,98
      DO 110 I=1,150
        G002   =E002(I,J)
        D002(I,J)=G002+F002(I,J)
  110 CONTINUE
      DO 111 J=3,20
      DO 111 K=3,10
      DO 111 I=3,299
        G002   =E002(I,J)*F002(I,J)
        D002(I,J)=G002
        E002(I,J)=D002(I,J)/F002(I,1)
        D002(I,J)=G002
        D002(I,J)=E002(I,J)/F002(I,6)
  111 CONTINUE
      DO 112 K=1,1
      DO 112 J=1,100
      DO 112 I=1,300
        D002(I,J)=MOD(E002(I,J),F002(I,J))
  112 CONTINUE
      DO 113 I=1,10
      DO 113 J=1,10
      DO 113 K=1,20
        G001   =A003(K,J,I)
        A003(K,J,I)=G001+C003(J,1,K,1,1,1,I)
  113 CONTINUE
      DO 114 I=1,10
      DO 114 J=1,10
      DO 114 K=1,20
        G001   =B003(K,3,J,I,1,1)*C003(J,1,K,1,1,1,J)
        A003(K,J,I)=G001
        B003(K,2,J,I,1,1)=A003(K,J,I)/C003(1,1,I,1,1,1,1)
        G001   =B003(K,2,J,I,1,1)*C003(1,1,1,1,1,1,2)
        A003(K,J,I)=G001
        A003(K,J,I)=B003(K,1,J,I,1,1)/C003(J,1,J,1,1,1,J)
  114 CONTINUE
      DO 115 I=1,2
      DO 115 J=1,2
      DO 115 K=1,20
        A003(K,I,J)=MOD(B003(K,1,J,I,1,1),C003(J,1,K,1,1,1,I))
  115 CONTINUE
      DO 122 L=1,2
      DO 122 K=1,2
      DO 122 I=1,2
      DO 122 J=1,2
        G005   =A005(J,I)
        A005(J,I)=G005+C005(J,I)
  122 CONTINUE
      DO 123 L=3,100
      DO 123 K=3,10
      DO 123 I=3,3
      DO 123 J=3,3
        G005   =B005(J,I)*C005(J,I)
        A005(J,I)=G005
        B005(J,I)=A005(2,I)/C005(J,I)
        A005(J,I)=G005
        A005(J,I)=B005(J,I)/C005(J,I)
  123 CONTINUE
      DO 128 I=1,10
      DO 128 J=1,10
      DO 128 K=1,30
      DO 128 L=1,20
        G004   =A006(L,K,J,I)
        A006(L,K,J,I)=G004+C006(L,1,K,J,I,1,1)
  128 CONTINUE
      DO 129 I=1,9
      DO 129 J=1,9
      DO 129 K=1,19
      DO 129 L=1,19
        G004   =B006(L,K,J,I,1,1)*C006(J,1,J,1,1,1,2)
        A006(L,K,J,I)=G004
        B006(L,K,J,I,1,1)=A006(L,K,J,I)/C006(J,1,J,J,J,1,1)
        G004   =B006(L,K,J,I,1,1)*C006(J,1,I,1,1,1,2)
        A006(L,K,J,I)=G004
        A006(L,K,J,I)=B006(L,K,J,I,1,1)/C006(J,1,I,1,1,1,1)
  129 CONTINUE
      DO 130 I=1,4
      DO 130 J=1,5
      DO 130 JJ=1,2
      DO 130 K=1,30
      DO 130 L=1,20
        A006(J,J,J,J)=MOD(B006(L,K,J,I,1,1),C006(L,1,K,J,I,1,1))
  130 CONTINUE
      DO 140 I=1,100
        A04(I)=A004(I)
  140 CONTINUE
      DO 150 I=1,3
      DO 150 J=1,3
        A05(J,I)=A005(J,I)
  150 CONTINUE
      DO 160 I=1,10
      DO 160 J=1,10
      DO 160 L=1,30
      DO 160 K=1,20
        A06(K,L,J,I)=A006(K,L,J,I)
  160 CONTINUE
      WRITE(6,*) (A001(I),I=1,100,10)
      WRITE(6,*) (D001(I),I=1,1000,100)
      WRITE(6,*)  A002
      WRITE(6,*) ((D002(J,I),J=1,300,10),I=1,200,20)
      WRITE(6,*) (((A003(K,J,I),I=1,10,3),J=1,30,5),K=1,200,20)
      WRITE(6,*) (A04(I),I=1,100,10)
      WRITE(6,*)  A05
      WRITE(6,*) ((((A06(L,K,J,I),L=1,20,5),K=1,30,5),J=1,10,5),I=1,5)
      END
