      PROGRAM         MAIN
      REAL     R4_ARRAY_1(5)
      COMPLEX  C8_ARRAY_1(5)
      DATA R4_ARRAY_1/3.7,8.4,3.9,5.0,9.1/
     &    ,C8_ARRAY_1/(2.3,3.2),(-4.7,3.4),(3.6,7.4),
     &                (9.5,2.7),(-1.1,8.9)          /

      REAL    R4_DVT_5(5)
      COMPLEX C8_DVT_5(5)

      INTEGER             I,N,ERROR,END_NUM
      CHARACTER*80        VOUT,SOUT

      N=4*INT(COS(0.0))

      WRITE (1,*,ERR=10) R4_ARRAY_1*4.932-9.

      DO I=1,5
         R4_DVT_5(I)   = R4_ARRAY_1(I)*4.932-9.
      ENDDO
      WRITE (2,*)        (R4_DVT_5(I),I=1,5)

      WRITE (1,*,ERR=10) SIN(COS(R4_ARRAY_1(1:N))*0.3)/3.

      DO I=1,N
         R4_DVT_5(I)   = SIN(COS(R4_ARRAY_1(I))*0.3)/3.
      ENDDO
      WRITE (2,*)        (R4_DVT_5(I),I=1,N)


      WRITE (1,*,ERR=10) C8_ARRAY_1*(9.3,-7.0) - (22.1,87.3)

      DO I=1,5
         C8_DVT_5(I)   = C8_ARRAY_1(I)*(9.3,-7.0) - (22.1,87.3)
      ENDDO
      WRITE (2,*)        (C8_DVT_5(I),I=1,5)

      WRITE (1,*,ERR=10) LOG(CONJG(C8_ARRAY_1(1:N-1))*3.9)*0.087

      DO I=1,N-1
         C8_DVT_5(I)   = LOG(CONJG(C8_ARRAY_1(I))*3.9)*0.087
      ENDDO
      WRITE (2,*)        (C8_DVT_5(I),I=1,N-1)


      REWIND(1)
      REWIND(2)
 100  ERROR=0
      END_NUM=0
      READ(1,FMT='(A80)',END=110,ERR=150) VOUT
      GOTO 120
 110  END_NUM=1
 120  READ(2,FMT='(A80)',END=130,ERR=150) SOUT
      GOTO 140
 130  END_NUM=END_NUM+1
      IF(END_NUM .EQ. 2) GOTO 160
 140  ERROR=END_NUM
      IF(VOUT .NE. SOUT) THEN
         ERROR=1
         GOTO 160
      ENDIF
      GOTO 100
 150  ERROR=1
 160  IF(ERROR .EQ. 0) THEN
         WRITE(6,*) 'OK'
      ELSE
         WRITE(6,*) 'NG'
      ENDIF
      STOP

   10 WRITE (6,*) '******  ERROR AT WRITE STATEMENT  ******'
      STOP

      END PROGRAM MAIN
