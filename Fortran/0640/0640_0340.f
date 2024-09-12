      PROGRAM MAIN
      INTEGER  I10(2),I30(2,2,10),LIST(10)
      LOGICAL  L10S,L10(10),L30(10,2,2),L20(2,10),L11S,L31(10,2,2)
      REAL     R10(10)
      REAL*8   D10S,D10(10),D20(10,2),D30(10,2,2),D11S,D12S,
     1         D31(10,2,2)
      COMPLEX*16 CD10S,CD10(10),CD30(10,2,2),CD20(2,10),CD21(2,2)
      DATA I10/1,2/,I30/10*1,10*2,10*3,10*4/,LIST/1,2,3,4,5,6,7,8,9,10/ 
      DATA L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1         .FALSE.,.TRUE.,.FALSE./,L30/40*.FALSE./
      DATA L20/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE.,
     1         2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./
      DATA L31/40*.FALSE./
      DATA D10S/0/,D10/1,2,3,4,5,6,7,8,9,10/,D20/5*1,5*2,5*3,5*4/,
     1     D30/10*1,10*2,10*3,10*4/,D11S/5/
      DATA CD10/4*(4,4),4*(8,8),(1,0),(0,1)/,CD30/10*(1,1),10*(1,0),
     1     10*(0,1),10*(2,2)/
      DATA I11S/0/,R10/10*0/,CD20/20*(0,0)/,I12S/0/,CD21/(1,1),(2,2),
     1     (3,3),(4,4)/,
     2     D31/40*0/,N2/2/,N10/10/

      DO 10 I=1,N2
       DO 20 J=1,N2
         DO 30 K = 1,N10
           I10S = I10(I) * I30(I,J,K)
           L10S = L10(K) .OR. L30(K,J,I)
           IF (   L10S     )  THEN
             D10S = D10(K) + D20(K,J) - D30(K,J,I)
             D12S = D10S
             CD10S = CD10(K)/CD30(K,J,I)
             I11S = I11S + I10S + I
             D11S = DMAX1( D10(K),D11S)
             L20(J,K) = L10S
             R10(LIST(K)) = D10S + REAL(I)
             CD20(J,LIST(K)) = CD10S
           ELSE
             D10S = D10(LIST(K))
             I12S = I12S - I10S
             CD10S = CD21(J,I) + CD30(LIST(K),J,I)
             D12S = I10S + D30(K,LIST(J),I)
             L11S = L10S .OR. L20(J,K)
             L31(LIST(K),J,I) = L11S
           ENDIF
           D10S = D10S + D10(J)
           D31(K,J,I) = D10S + CD10S + D12S
   30    CONTINUE
   20  CONTINUE
   10 CONTINUE
      WRITE(6,*) ' I11S = ',I11S
      WRITE(6,*) ' D11S = ',D11S
      WRITE(6,*) ' L20  = ',L20
      WRITE(6,*) ' R10  = ',R10
      WRITE(6,*) ' CD20 = ',CD20
      WRITE(6,*) ' I12S = ',I12S
      WRITE(6,*) ' L31  = ',L31
      WRITE(6,*) ' D31  = ',D31
      STOP
      END
