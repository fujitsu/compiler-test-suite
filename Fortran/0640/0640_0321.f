      DATA N9/9/,N10/10/
      INTEGER*4 I10(10)/10*0/,I10S/2/,I11S/3/,I11(10)/5*1,5*2/
      REAL*4    R10(10)/1,2,3,4,5,6,7,8,9,10/
      REAL*8    D10(10)/1,2,3,1,2,3,7,8,9,7/
      COMPLEX*8 C10(10)/(1,1),2*(2,2),3*(3,3),4*(4,4)/
      COMPLEX*16 CD10(10)/3*(1,0),3*(1,0),3*(1,1),(0,0)/

      LOGICAL*4  L20(11)/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1                   .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./,
     2           L21S/.FALSE./,
     3           L21(11)/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.FALSE.,.TRUE.,
     4                   .FALSE.,.TRUE.,.TRUE.,.TRUE.,.TRUE./,
     5           L22(10)/10*.FALSE./,
     6           L23(10,10)/25*.TRUE.,25*.FALSE.,25*.TRUE.,25*.FALSE./, 
     7           L24(10,10)/25*.TRUE.,25*.FALSE.,25*.FALSE.,25*.TRUE./, 
     8           L20S

      WRITE(6,*) '----- TEST NO.1 -----'
      DO 100 J=2,N9
        DO 10 I=1,N10
          I10(I) = I10S
          I10S = I10(I) + I11S
   10     I11S = I10S + I10(I)
        R10(J) = R10(J+1) + D10(J) + I11(J)*8
        C10(J) = C10(J+1) + R10(J)/2. + CD10(J)
        WRITE(6,*) ' TEST'
        R10(J) = R10(J-1)*D10(J) + I11(J)*8
        C10(J) = C10(J-1) + CD10(J) + R10(J)/2.
        I11(J) = I11(J-1) + D10(J)
  100 CONTINUE
      WRITE(6,*) ' I10 = ',I10,' I10S = ',I10S,' I11S = ',I11S
      WRITE(6,*) ' R10 = ',R10
      WRITE(6,*) ' I11 = ',I11
      WRITE(6,*) ' C10 = ',C10
      WRITE(6,*) '----- TEST NO.2 -----'
      DO 200 J=2,N10
        WRITE(6,*) ' COUNT = ',J
        L20(J) = L20(J-1).AND..TRUE.
        L20(J) = L20(J)  .OR. L20(J+1)
        L20S = L20(J).NEQV.L21(J)
        L21(J) = L21S .OR.L20(J) .AND.L21(J)
        L22(J) = L21S .OR.L20(J) .AND.L20S
        DO 200 I=1,N10
          L20S = L20S.AND.L23(I,J)
          IF ( L20S ) L23(I,J) = L24(I,J)
  200 CONTINUE
      WRITE(6,*) ' L20 = ',L20,' L20S = ',L20S
      WRITE(6,*) ' L21 = ',L21
      WRITE(6,*) ' L22 = ',L22
      WRITE(6,*) ' L23 = '
      WRITE(6,300) L23
  300 FORMAT (20L3)
      STOP
      END
