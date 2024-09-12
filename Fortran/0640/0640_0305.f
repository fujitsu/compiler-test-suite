      PROGRAM MAIN
      DATA N/10/
      COMPLEX*8  C10(10),C11(10),C12(10),C13(10),C14(10),C15(10),
     1           C10V,C11V,C12V,C13V
      LOGICAL*4  L10(10),L11(10),L12(10),L13(10)
      INTEGER*4  I10(10),I11(10),I12(10),I13(10),I14(10)
      DATA  C10/5*(1,1),5*(0,0)/,
     1      C11/5*(2,2),5*(1,1)/,
     1      C12/5*(1,2),5*(1,1)/,
     1      C13/10*(1.5,2.5)/,
     1      C14/10*(1,2)/,
     1      C15/10*(1,2)/,
     2      C10V/(1,2)/,
     2      C11V/(1,2)/,
     2      C12V/(1,1)/,
     2      C13V/(1.5,2.5)/,
     3      L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     3          .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./,
     3      L11/.TRUE.,.FALSE.,.TRUE.,.TRUE.,.TRUE.,
     3          .FALSE.,.FALSE.,.FALSE.,.TRUE.,.FALSE./,
     3      L12/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     3          .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./,
     3      L13/10*.TRUE./
      DATA  I10/10*0/,
     4      I11/10*0/,
     4      I12/10*0/,
     4      I13/10*0/,
     4      I14/10*0/,
     5      L/3/
      WRITE(6,*) '----- LOOP 1 -----'
      DO 10 I=1,N
        IF (C10V .EQ. C11V ) THEN
          I10(I) = I
        ENDIF
        IF ( L10(I) ) THEN
          IF ( C10(I) .EQ. C12V ) THEN
            I11(I) = I
          ENDIF
        ENDIF
        IF ( C11(I) .NE. C12(I) ) THEN
          I12(I) = I
        ENDIF
        IF ( L11(L) ) THEN
          IF ( C13V .EQ. C13(I) ) THEN
            I13(I) = I
          ENDIF
        ENDIF
        IF ( L12(I) ) THEN
          IF ( L13(L) ) THEN
            IF ( C14(L) .EQ. C15(L) ) THEN
              I14(I) = I
            ENDIF
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,*) I10
      WRITE(6,*) I11
      WRITE(6,*) I12
      WRITE(6,*) I13
      WRITE(6,*) I14
      STOP
      END
