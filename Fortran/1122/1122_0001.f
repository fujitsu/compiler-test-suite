      PROGRAM IFP040
      CALL SUB1
      CALL SUB2
      CALL SUB3
      CALL SUB4
      STOP
      END
C
      SUBROUTINE SUB1
      REAL     R4A(1000),R4B(1000)
      POINTER (PR4A,R4A),(PR4B,R4B)
      LOGICAL  L4A(1000)
      DATA     L4A/100*.TRUE.,100*.FALSE.,100*.TRUE.,
     +         100*.TRUE.,100*.FALSE.,100*.TRUE.,
     +         100*.TRUE.,100*.FALSE.,100*.TRUE.,50*.FALSE.,
     +         49*.TRUE.,.FALSE./
      PR4A=MALLOC(1000*4)
      PR4B=MALLOC(1000*4)
      DO 1 I=1,1000
      R4A(I)=10.0
  1   R4B(I)=20.0
      DO 10 I=1,1000
       IF (L4A(I)) THEN
         R4B(I)=R4A(I)
       ENDIF
 10   CONTINUE
      WRITE(6,*) '*** SUB1 RESULT ****'
      WRITE(6,90) R4B
 90   FORMAT(5(F5.1))
      RETURN
      END
C
      SUBROUTINE SUB2
      REAL     R4A(1000),R4B(1000)
      POINTER (PR4A,R4A),(PR4B,R4B)
      LOGICAL  L4A(1000)
      DATA     L4A/100*.TRUE.,100*.FALSE.,100*.TRUE.,
     +         100*.TRUE.,100*.FALSE.,100*.TRUE.,
     +         100*.TRUE.,100*.FALSE.,100*.TRUE.,50*.FALSE.,
     +         49*.TRUE.,.FALSE./
      PR4A=MALLOC(1000*4)
      PR4B=MALLOC(1000*4)
      DO 1 I=1,1000
      R4A(I)=10.0
 1    R4B(I)=20.0
      DO 10 I=1,1000
       IF (L4A(I)) THEN
         R4B(I)=R4A(I)
       ENDIF
 10   CONTINUE
      WRITE(6,*) '*** SUB2 RESULT ****'
      WRITE(6,90) R4B
 90   FORMAT(5(F5.1))
      RETURN
      END
C
      SUBROUTINE SUB3
      INTEGER*4 I4A(2048),IAX,IBX,I4B(2048)
      POINTER (PI4A,I4A),(PI4B,I4B)
      PI4A=MALLOC(2048*4)
      PI4B=MALLOC(2048*4)
      DO 5 I=1,512
        I4A(I)=-5
  5   CONTINUE
      DO 6 I=513,1024
        I4A(I)=0
  6   CONTINUE
      DO 7 I=1025,1536
        I4A(I)=5
  7   CONTINUE
      DO 8 I=1537,2048
        I4A(I)=10
  8   CONTINUE
      DATA IAX,IBX/1,0/
C
      DO 9 I=1,2048
        IF(IAX.LE.I4A(I)) THEN
          I4B(I)=I4A(I)
          IBX=I
        ENDIF
 9    CONTINUE
      DO 99 I=1,2048
        IF(IAX.LE.I4A(I)) THEN
          I4B(I)=MAX(I4A(I),1)
        ENDIF
 99   CONTINUE
      WRITE(6,*) '*** SUB3 RESULT ****'
      WRITE(6,*) 'MAX DATA ****  ',I4B(IBX)
      WRITE(6,*) 'MAX INDEX ***  ',IBX
      RETURN
      END
C
      SUBROUTINE SUB4
      REAL*8 R8A(1024),RIF
      POINTER (PR8A,R8A)
      INTEGER*4 IMAX
      PR8A=MALLOC(1024*8)
      DO 5 I=1,256
        R8A(I)=10.0
  5   CONTINUE
      DO 6 I=257,512
        R8A(I)=0.0
  6   CONTINUE
      DO 7 I=513,768
        R8A(I)=1.0
  7   CONTINUE
      DO 8 I=769,1024
        R8A(I)=20.0
  8   CONTINUE
      DATA IMAX/1/
C
      DO 11 I=1,1024
        RIF=R8A(IMAX)-R8A(I)
        IF(RIF.LE.0) THEN
          IMAX=I
        ENDIF
11    CONTINUE
      DO 12 I=1,1024
        IF(RIF.LE.0) THEN
          RIF=MAX(R8A(I),1)
        ENDIF
12    CONTINUE
      WRITE(6,*) '*** SUB4 RESULT ****'
      WRITE(6,*) RIF
      WRITE(6,*) IMAX
      RETURN
      END
