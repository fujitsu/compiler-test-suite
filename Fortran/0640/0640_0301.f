      PROGRAM MAIN
      DATA N/10/
      INTEGER*4  I10(10)/1,2,3,4,5,6,7,8,9,10/
      INTEGER*4  I11(10)/1,1,3,3,5,5,7,7,9,9/
      INTEGER*4  I12(10)/1,2,1,2,1,6,0,6,0,10/
      INTEGER*4  I13(10)/1,0,3,5,5,0,0,7,8,7/
      INTEGER*4  I14(10)/0,0,4,4,2,2,3,3,4,4/
      INTEGER*4  I15(10)/2,0,4,1,2,3,4,5,6,7/,I16(10)/10*0/,I10V/0/
      COMPLEX*8  C10(10)/10*(0.0,0.0)/,C11(10)/5*(1,1),5*(2,2)/

      LOGICAL*4  L10(10)/4*.FALSE.,.TRUE.,5*.FALSE./,L11(10)/10*.TRUE./ 
      LOGICAL*4  L12(10)/4*.FALSE.,.TRUE.,5*.FALSE./,L14(10)/10*.TRUE./ 
      LOGICAL*4  L13(10)/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     +                   .TRUE.,.FALSE.,.TRUE.,.FALSE./
      LOGICAL*4  L15(10)/10*.FALSE./,L16(10)/5*.FALSE.,5*.TRUE./
      REAL*8     D20(10)/1,2,3,4,5,6,5,4,3,2/,D20V/2/
      INTEGER*4  I20V/4.9/

      REAL*4  R30(10)/0,1,2,3,4,5,6,7,8,9/
      REAL*4  R31(10)/1,0,1,2,3,4,5,6,7,10/,R32(10)/10*2.0/
      REAL*4  R33(10)/3,3,2,1,3,2,1,3,2,3/
      REAL*4  R34(10)/10*1.5/,R35(10)/10*1.5/
      REAL*4  R36(10)/1,2,3,4,5,6,7,8,9,10/
      REAL*4  R37(10)/1,2,4,3,5,2,1,7,9,10/,R38(10)/10*0./,R30V/3./
      INTEGER*4  L/ 8/
      WRITE(6,*) '----- LOOP 1 -----'
      DO 10 I=1,N
        IF ( I10(I) .EQ. I11(I) ) GO TO 11
          IF ( I10(I) .NE. I12(I) ) GO TO 12
            GO TO 13
   11     IF ( I10(I) .EQ. I13(I) ) GO TO 13
   12       IF ( I10(L) .NE. I14(L) ) GO TO 14
              GO TO 10
   13       IF ( I10(I) .EQ. I15(I) ) GO TO 10
   14         C10(I) = (1.0,2.0) + C11(I)
              I16(I) = I
              I10V = I10V + I16(I)
   10 CONTINUE
      WRITE(6,*) C10
      WRITE(6,*) I16
      WRITE(6,*) I10V
      WRITE(6,*) '----- LOOP 2 -----'
      DO 20 I=1,N
        IF ( L10(L) ) GO TO 21
          IF ( L11(L) ) GO TO 22
            GO TO 23
   21     IF ( L12(L) ) GO TO 23
   22       IF ( L13(I) ) GO TO 24
              GO TO 20
   23       IF ( L14(L) ) GO TO 20
   24         L15(I) = .NOT.L16(I)
              D20V = D20V + D20(I)
              I20V = MAX0(I20V,5)
   20 CONTINUE
      WRITE(6,*) L15
      WRITE(6,*) D20V
      WRITE(6,*) I20V
      WRITE(6,*) '----- LOOP 3 -----'
      DO 30 I=1,N
        IF ( R30(I) .GE. R31(I) ) THEN
          IF ( R31(L)  -   5.0 ) 30,31,32
   31       IF  ( R32(L) .GE. 1.0 ) GO TO 33
              GO TO 34
   32       IF  ( 2.0 .LE. R33(I) ) GO TO 34
   33         IF ( R34(I) .EQ. R35(I) ) GO TO 35
                GO TO 30
   34         IF ( R36(L) .NE. R37(L) ) GO TO 30
   35           R38(I) = I
                R30V = R30V + R38(I)
        ENDIF
   30 CONTINUE
      WRITE(6,*) R38
      WRITE(6,*) R30V
      STOP
      END
