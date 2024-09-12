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

      IVAL = 0
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
      WRITE(6,99) ' (DA10) ',DA10
      WRITE(6,99) ' (DA20) ',DA20
      WRITE(6,99) ' (DA30) ',DA30
      WRITE(6,99) ' (CD10) ',(( CD10(I,J),I=-10,12),J=10,-10,-1)
      WRITE(6,99) ' (CD20) ',(( CD20(I,J),I=10,-10,-1),J=-10,10)
      WRITE(6,99) ' (DB10) ',(( DB10(I,J),I=10,-10,-1),J=-10,10)
      WRITE(6,99) ' (DB20) ',(( DB20(I,J),I=10,-10,-1),J=-10,10)
 99   FORMAT (a,8(f10.3))

      DO 30 I=IM5,IT6,IT1
        DO 40 J=-10,9,2
          ID10(I,J*IT2) = ID10(I,J*IT2+1) * ID30(J-IM1,I+IT2)
          ID20(J,J) = ID10(I,J*IT2+IT2) + ID30(J+IT5,I-IM2)
          ID30(I,J+IT1) = ID20(I,J+IM1) + ID20(J+IT1,I)
          IF ( I ) 40,41,41
 41         IVAL = MAX(IVAL,ID30(I-1,J))
            IND  = I
 40     CONTINUE
 30   CONTINUE
      WRITE(6,*) ' (ID10) ',ID10
      WRITE(6,*) ' (ID20) ',ID20
      WRITE(6,*) ' (ID30) ',ID30
      WRITE(6,888) ' IVAL = ',IVAL,' IND = ',IND
 888  FORMAT(a,i5,a,i5)
 999  FORMAT(a,f10.3,a,f10.3)

      DO 50 I=-20,20
       DO 50 J=20,-20,-1
         ID10(I,J) = -J
         ID20(I,J) = J
         ID30(I,J) = J
 50   CONTINUE

      DO 60 I=0,20
       DO 60 J=-20,0
         CD10(ID10(I,J),J) = CD20(ID20(I,J),I) + CD30(I,J)
         CD20(ID20(I,J),I+IM1) =
     *           CD10(ID10(I,J),ID10(I,J)) * CD30(J,J)
         IP = ID30(I,J)
         CD30(IP,J) = CD10(ID10(I,J),IP) - CD20(IP,J)
 60   CONTINUE
      WRITE(6,99) ' (CD10) ',CD10
      WRITE(6,99) ' (CD20) ',CD20
      WRITE(6,99) ' (CD30) ',CD30
      DVAL1= 0.0D0
      DVAL2= 0.0D0
      DO 70 I=-20,20
       DO 70 J=-20,20
         IF ( DREAL(CD10(I,J)) .GE. DIMAG(CD10(I,J)) ) THEN
           DVAL1= DMAX1(DVAL1,DREAL(CD10(I,J)))
         ELSE
           DVAL2 = DMAX1(DVAL2,DIMAG(CD10(I,J)))
         ENDIF
 70   CONTINUE
      WRITE(6,999) ' DVAL1 = ',DVAL1,' DVAL2 = ',DVAL2

      STOP
      END
