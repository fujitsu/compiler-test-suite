      DATA N4/4/,N10/10/
      INTEGER*4  I10(10)/10*0/,I11(20)
      REAL*4     R10(10)
      REAL*8     D10(10)/10*0/,D10S,D11(10)
      REAL*8     Q10(10)/10*0/
      COMPLEX*8  C10(10)
      COMPLEX*16 CD10(11)/11*(0,0)/,CD11(10)
      LOGICAL*4  L10(10),L10S
      DATA  D11/1,2,3,4,5,6,7,8,9,10/,R10/2,3,4,0,-3,-1,5,-8,2,1/,
     1      CD11/5*(1,1),5*(0,1)/ ,L10/.TRUE.,.FALSE.,.TRUE.,
     2      .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./,
     3      L10S/.TRUE./, D10S/1./,
     4      C10/3*(0,0),3*(1,1),2*(0,1),2*(1,0)/,
     5      I11/1,2,4,4,5,5,7,7,9,9,1,2,3,4,5,6,7,8,9,10/
      NAMELIST /OUT1/C10

      DO 100 I=2,N4
   10   I10(I) = I
   11   D10(I) = D11(I)/5
   16   R10S = R10(I)
        DO 12 J=1,N10
          D10S = D10S + D10(J) + D11(J)
   13     Q10(J) = D10S
          I10S = J
          I10(I10S) = I11(I10S+J) + J
          CD10(I10S+1) = CMPLX(D10S)
          IF( CD10(J).EQ. CD11(I10S)) IF(I10(J)) 14,15,15
   14      I10S = I10(J)*8
           GO TO 17
   15      I10S = I10(J)*4
          I10(J) = I10S/15
   17     IF( L10S ) L10S = D10S.EQ.D11(J)
          WRITE(6,*) ' C10 = '
          WRITE(6,200) C10
  200     FORMAT (6E10.1)
          C10(J) = CMPLX(J) + C10(J)
   12   CONTINUE
        L10(I) = I .EQ. I11(I)
        IF ( L10(I) ) THEN
          R10(I-1) = R10S + I11(I)
        ELSE
          R10(I-1) = R10S + I11(I)
        ENDIF
  100 CONTINUE
      WRITE(6,*) ' I10  = ',I10
      WRITE(6,*) ' D10  = ',D10
      WRITE(6,*) ' D10S = ',D10S
      WRITE(6,*) ' Q10  = ',Q10
      WRITE(6,*) ' CD10 = ',CD10
      WRITE(6,*) ' L10  = ',L10
      WRITE(6,*) ' R10  = ',R10
      STOP
      END
