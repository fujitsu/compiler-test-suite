      PROGRAM MAIN
      INTEGER A(10)/-5,-4,-3,-2,-1,0,1,2,3,4/
      INTEGER D(10)/1,2,3,3,2,1,1,2,3,2/
      
      WRITE(6,*)
      DO 10 I=1,10,2
        CALL SUB(BTEST(D(I),A(I)+5),IBSET(I,D(I)-1),IBCLR(A(I),D(I)))
   10 CONTINUE
      STOP
      END
C
      SUBROUTINE SUB(L,BSET,BCLR)
      LOGICAL L,L2(30)/30*.FALSE./
      INTEGER BSET,BCLR,B(30)/30*0/,C(30)/30*0/
      DO 20 I=1,30
        IF (L) THEN
          L2(I) = BTEST(I,BSET)
          B(I) = IBSET(BCLR,I)
          C(I) = IBCLR(I,ABS(BCLR-BSET))
        ENDIF
   20 CONTINUE
      WRITE(6,*) L2
      WRITE(6,*)
      WRITE(6,1) B
      WRITE(6,*)
      WRITE(6,1) C
      WRITE(6,*)
    1 FORMAT(15I5)
      RETURN
      END
