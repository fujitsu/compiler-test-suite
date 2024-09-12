      PROGRAM MAIN
      INTEGER  ID1(30),ID2(30),ID3(30)
      COMPLEX  CA(30,30),CB(30,30),CE(30),CF(30,30)
      COMPLEX*16 CDA(30,30)

      CALL INTDT(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
      CALL SUB1(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
      WRITE(6,*) '### CE ###'
      WRITE(6,191) CE
      WRITE(6,*) '### CA ###'
      WRITE(6,191) CA
      WRITE(6,*) '### CB ###'
      WRITE(6,191) CB
      WRITE(6,*) '### CF ###'
      WRITE(6,191) CF
      WRITE(6,*) '### CDA ###'
      WRITE(6,191) CDA
      WRITE(6,*) '### ID1 ###'
      WRITE(6,195) ID1
      WRITE(6,*) '### ID2 ###'
      WRITE(6,195) ID2
      WRITE(6,*) '### ID3 ###'
      WRITE(6,195) ID3

      CALL INTDT(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
      CALL SUB2(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
      WRITE(6,*) '### CE ###'
      WRITE(6,191) CE
      WRITE(6,*) '### CA ###'
      WRITE(6,191) CA
      WRITE(6,*) '### CB ###'
      WRITE(6,191) CB
      WRITE(6,*) '### CF ###'
      WRITE(6,191) CF
      WRITE(6,*) '### CDA ###'
      WRITE(6,191) CDA
      WRITE(6,*) '### ID1 ###'
      WRITE(6,195) ID1
      WRITE(6,*) '### ID2 ###'
      WRITE(6,195) ID2
      WRITE(6,*) '### ID3 ###'
      WRITE(6,195) ID3

      CALL INTDT(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
      CALL SUB3(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
      WRITE(6,*) '### CE ###'
      WRITE(6,191) CE
      WRITE(6,*) '### CA ###'
      WRITE(6,191) CA
      WRITE(6,*) '### CB ###'
      WRITE(6,191) CB
      WRITE(6,*) '### CF ###'
      WRITE(6,191) CF
      WRITE(6,*) '### CDA ###'
      WRITE(6,191) CDA
      WRITE(6,*) '### ID1 ###'
      WRITE(6,195) ID1
      WRITE(6,*) '### ID2 ###'
      WRITE(6,195) ID2
      WRITE(6,*) '### ID3 ###'
      WRITE(6,195) ID3

 191  FORMAT(5(1h ,D14.7))
 195  FORMAT(1h 5I15)
      END

      SUBROUTINE INTDT(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
      INTEGER  ID1(30),ID2(30),ID3(30)
      COMPLEX  CA(30,30),CB(30,30),CE(30),CF(30,30)
      COMPLEX*16 CDA(30,30)
      DO 10 I=1,30
       ID1(I) = 1
       ID2(I) = 2
       ID3(I) = 16
       CE(I) = (1,1)
       DO 10 J=1,30
        CA(I,J) = (1,1)+I
        CB(I,J) = (3.,1.5)
        CF(I,J) = (5.,3.125)+I
        DO 10 K=1,30
        CDA(I,J) = (7.,0.0625)*J
  10  CONTINUE
      END

      SUBROUTINE SUB1(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
       INTEGER  I,J,K,ID1(30),ID2(30),ID3(30),CST/1/,II/5/
       REAL     A(30)
       COMPLEX  CA(30,30),CB(30,30),CE(30),CF(30,30)
       COMPLEX*16 CDA(30,30)
       DATA     A/30*1/
      DO  100  II=3,20
        K=3
        J=2
        DO  110  I=3,15,3
         CA(K,II) = CA(K-2,II) ** ID1(K) + CB(K,K)
         K = K + 1
         CDA(II,1) = DCMPLX(CA(II,J))**ID1(K)/CDA(II-2,K)
          DO  120  J=3,K,3
           IF(K.EQ.J) THEN
            A(J)= (REAL(DREAL(CDA(J,II))))/A(J-1)
           ENDIF
 120      CONTINUE
         CE(K) = CA(I,J) ** ID2(II) / CE(K-2)
         ID3(J) = ID3(K) ** ID2(II)
 110    CONTINUE
        K=1
        J=1
        DO  130  I=3,II
         CA(K,I) = CB(K,K) ** ID1(K)
         K = K + 1
         CDA(I,1) = DBLE(CA(K,I))**ID1(I)
         CE(K) = CF(K,J) ** ID2(I)
         J = J + CST
         ID3(J) = ID1(K) ** ID2(I)
 130    CONTINUE
 100  CONTINUE
      END

      SUBROUTINE SUB2(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
       INTEGER  I,J,K,ID1(30),ID2(30),ID3(30),CST/1/,II/5/
       REAL     A(30)
       COMPLEX  CA(30,30),CB(30,30),CE(30),CF(30,30)
       COMPLEX*16 CDA(30,30)
       DATA     A/30*1/
      DO  200  II=3,20
        K=3
        J=2
        DO  210  I=3,15,3
         CA(K,II) = CA(K-2,II) ** ID1(K) + CB(K,K)
         K = K + 1
         CDA(II,1) = DCMPLX(CA(II,J))**ID1(K)/CDA(II-2,K)
          DO  220  J=3,K,3
           IF(K.EQ.J) THEN
            A(J)= (REAL(DREAL(CDA(J,II))))/A(J-1)
           ENDIF
 220      CONTINUE
         CE(K) = CA(I,J) ** ID1(II) - CE(K-2)
         ID3(J) = ID3(K) ** ID2(II)
 210    CONTINUE
        K=3
        J=2
        DO  230  I=3,II
         CA(K,I) = CA(I,1) ** ID1(K) + CE(J)
         K = K + 1
         CE(K) = CF(K,J) ** ID2(I)
         J = J + CST
         ID3(J) = ID1(K) ** ID3(I)
         CDA(K,J) = CDA(1,1)**CDA(I,1)
 230    CONTINUE
 200  CONTINUE
      END

      SUBROUTINE SUB3(CA,CB,CE,CF,CDA,ID1,ID2,ID3)
       INTEGER  I,J,K,ID1(30),ID2(30),ID3(30),II/5/
       REAL     A(30),AMAX/0/,C(30)
       COMPLEX  CA(30,30),CB(30,30),CE(30),CF(30,30)
       COMPLEX*16 CDA(30,30)
       DATA     A/30*1/,C/30*2/
      DO  300  II=3,20
        K=3
        J=2
        DO  310  I=3,15,3
         CA(K,II) = CA(K-2,II) ** ID1(K) + CB(K,K)
         K = K + 1
         CDA(II,1) = DCMPLX(CA(II,J))**ID1(K)/CDA(II-2,K)
          DO  320  J=3,K,3
           IF(K.EQ.J) THEN
            A(J)= (REAL(DREAL(CDA(J,II))))/A(J-1)
           ENDIF
 320      CONTINUE
         CE(K) = CA(I,J) ** ID1(II) - CE(K-2)
         ID3(J) = ID3(K) ** ID2(II)
 310    CONTINUE
        K=3
        J=2
        DO  330  I=3,II
         CA(K,I) = CA(K-1,K) ** ID3(I) + CE(J)
         K = K + 1
         CE(K) = CF(K,J) ** ID2(I) - CE(J)
         IF(AMAX.LE.C(K)) THEN
          AMAX = C(K)
         ENDIF
         J = J + 1
         ID3(J) = ID1(K) ** ID3(I)
         IF(K.GT.I) GOTO 329
         CDA(K,I) = CDA(K-2,I-2)**CDA(I-1,J-1)
 329     CF(K,J) = CDA(J,I-2)**CB(J,K) - CE(J)
 330    CONTINUE
 300  CONTINUE
      END




