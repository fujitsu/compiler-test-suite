      PROGRAM MAIN
      DATA N/10/
      LOGICAL*4 L10(10)/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     +                  .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./,
     +          L11(10)/10*.TRUE./
      INTEGER*4 I10(10)/10*0/,I11(10)/10*0/,K/2/,J/5/
      REAL*4    R10(10)/2,1,2,1,1,3,2,1,3,1/,X/1/
      REAL*8    D10(10)/0,1,2,3,3,0,1,2,1,1/,Y/2/

      REAL*4     R20(10)/0,1,2,0,1,2,0,1,2,0/,Z2/1/,X2/2.5/,Y2/2.0/
      INTEGER*4  I20(10)/10*0/,K2/5/,J2/3/,I21(10)/10*0/
      LOGICAL*4  L20(10)/.FALSE.,.FALSE.,.FALSE.,.FALSE.,.TRUE.,
     +                   .TRUE.,.FALSE.,.FALSE.,.FALSE.,.TRUE./
      COMPLEX*8  C20(10)/4*(0,0),(1,1),5*(0,0)/
      COMPLEX*8  C21(10)/4*(2,2),(1,1),5*(3,3)/
      COMPLEX*8  C22(10)/5*(2,1),5*(1,2)/
      COMPLEX*8  C23(10)/2*(0,0),(2.1,3.1),7*(1,1)/
      WRITE(6,*) ' ---- LOOP 1 -----'
      DO 10 I=1,N
        IF ( L10(I) ) GO TO 11
          IF ( X .GT. R10(I) ) GO TO 12
            GO TO 13
   11     IF ( D10(I) .LT. Y ) GO TO 12
            GO TO 13
   12     I10(I) = I
   13   CONTINUE
        IF ( X-1.0D01 ) 14,15,15
   14     IF ( L11(J) ) GO TO 16
            GO TO 17
   15     IF (-2.0E01 + R10(K) ) 16,17,17
   16     I11(I) = I*I
   17   CONTINUE
   10 CONTINUE
      WRITE(6,*) I10
      WRITE(6,*) I11
      WRITE(6,*) ' ---- LOOP 2 -----'
      DO 20 I=1,N
        IF ( Z2 - R20(I) ) 21,22,23
   21     IF ( C20(K2) .EQ. C21(K2) ) GO TO 24
            GO TO 25
   22     IF ( .NOT.L20(J2) ) GO TO 24
            GO TO 25
   23     IF ( X2-Y2 ) 25,24,24
   24     I20(I) = INT(FLOAT(I))
   25   CONTINUE
        IF ( C22(I) .EQ. (1.0,2.0) ) GO TO 26
          IF ( (2.0,3.0) .NE. C23(K2) ) GO TO 27
            GO TO 20
   26     IF ( C22(K2) .EQ. C23(J2)) GO TO 27
            GO TO 20
   27     I21(I) = I
   20 CONTINUE
      WRITE(6,*) I20
      WRITE(6,*) I21
      STOP
      END
