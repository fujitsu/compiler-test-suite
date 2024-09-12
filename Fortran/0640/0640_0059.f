      PROGRAM MAIN
      IMPLICIT    REAL*8(D),INTEGER*4(I),COMPLEX*16(C)
      DIMENSION   DA10(-20:20),DA20(-20:20),DA30(-20:20),
     *       DB10(-20:20,-20:20),DB20(-20:20,-20:20)
      DIMENSION   ID10(-20:20,-20:20),ID20(-20:20,-20:20),
     *      ID30(-20:20,-20:20)
      DIMENSION   CD10(-20:20,-20:20),CD20(-20:20,-20:20),
     *      CD30(-30:30,-30:30)

      DATA    DA10/41*4.0D0/,DA20/41*2.0D0/,DA30/41*3.0D0/
      DATA    DB10/1681*1.0D0/,DB20/1681*2.0D0/
      DATA    ID10/1681*2/,ID20/1681*3/,ID30/1681*4/
      DATA    CD10/1681*(1.0D0,2.0D0)/,CD20/1681*(2.0D0,3.0D0)/
      DATA    CD30/3721*(4.0D0,8.0D0)/
      DATA    IT1/1/,IT2/2/,IT3/3/,IT4/4/,IT5/5/,IT6/10/
      DATA    IM1/-1/,IM2/-2/,IM3/-4/,IM4/-10/,IM5/-20/

      DO 10 I=IM4,-IM4+2
        DA10(I+IT1*IT3) = DA20(I+IT3+IM1) + DA30(I+IM4)
        DA20(I) = DA10(I+IT1*IT2) * DA30(I+IT1-IM2)
        DVAR1 = DNINT( DSQRT( DA20(I) + DA10(I+IM2)) )
         DO 20 J=10,-IT6,-1
           DB10(J,I+IM1) = DB20(I,J+IT1+IT4) * 2.0D0 + DB10(J-1,I)
           CD10(I,J) = CD20(I-IM2,J-IM3) + CD30(I+IT6,J+IT6)
           DX = DREAL(CDSQRT(CD10(J+IM1,I+IM2)))
           DY = DIMAG(CDSQRT(CD10(J+IM1,I+IM2)))
           CD20(J,I) = CD30(I,J+IT4)
     *            + DCMPLX(DNINT( DX ),DNINT( DY ))
           DB20(J+IT2,I) = DB10(I,J) + DB10(J+IM4,I)
 20      CONTINUE

         IF ( I.GT.8 ) THEN
           DVAR1 = DCOS( DA20(I+IM1) ) + 2.5D0
           DVAR1 = DNINT( DVAR1 )
         ENDIF
         DA30(I-10) = DA10(I+IT1) + DVAR1
 10   CONTINUE
      WRITE(6,99) ' (CD10) ',(( CD10(I,J),I=-10,12),J=10,-10,-1)
      WRITE(6,99) ' (CD20) ',(( CD20(I,J),I=10,-10,-1),J=-10,10)
      WRITE(6,99) ' (DB10) ',(( DB10(I,J),I=10,-10,-1),J=-10,10)
      WRITE(6,99) ' (DB20) ',(( DB20(I,J),I=10,-10,-1),J=-10,10)
 99   FORMAT(A,(8F8.3))

      STOP
      END
