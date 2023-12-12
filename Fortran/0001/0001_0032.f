        INTEGER*4 ERROR,I
        COMPLEX*8 S_A,S_B,V_A,V_B,S_DVT
        DIMENSION S_A(10),S_B(10),V_A(10),V_B(10),S_DVT(10)
        DATA S_A,S_B/10*(1.0,2.0),10*(2.0,1.0)/
        DATA V_A,V_B/10*(1.0,2.0),10*(2.0,1.0)/
        DATA ERROR/0/
C
          DO 10 I=1,5,1
            S_DVT(I)=S_A(I)+S_B(I)
   10     CONTINUE
          DO 20 I=1,5,1
            S_A(I+1)=S_DVT(I)
   20     CONTINUE
          DO 30 I=1,5,1
            S_DVT(I)=S_B(I)+S_A(I)
   30     CONTINUE
          DO 40 I=1,5,1
            S_B(I+1)=S_DVT(I)
   40     CONTINUE
C
          V_A(2:6)=V_A(1:5)+V_B(1:5)
          V_B(2:6)=V_B(1:5)+V_A(1:5)
          CALL SUB1(ERROR,V_A,V_B,V_A+V_B)
          CALL SUB2(ERROR,V_A,V_B,V_A-V_B)
C
          DO 50 I=1,10,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            ENDIF
            IF(V_B(I) .NE. S_B(I)) THEN
              ERROR=ERROR+1
            ENDIF
  50      CONTINUE
          IF(ERROR .EQ. 0) THEN
            WRITE(6,*) 'OK'
          ELSE
            WRITE(6,*) 'NG'
            WRITE(6,*) 'ERROR=',ERROR
            WRITE(6,*) S_A
            WRITE(6,*) V_A
            WRITE(6,*) S_B
            WRITE(6,*) V_B
          ENDIF
C
        STOP
        END
C
      SUBROUTINE SUB1(ERROR,A,B,C)
        INTEGER*4 ERROR
        COMPLEX*8 A,B,C
        DIMENSION A(10),B(10),C(10)
C
          DO 60 I=1,10,1
            IF(C(I) .NE. A(I)+B(I)) THEN
              ERROR=ERROR+1
            ENDIF
   60     CONTINUE
C
       RETURN
       END SUBROUTINE SUB1
C
      SUBROUTINE SUB2(ERROR,A,B,C)
        INTEGER*4 ERROR
        COMPLEX*8 A,B,C
        DIMENSION A(10),B(10),C(10)
C
          DO 70 I=1,10,1
            IF(C(I) .NE. A(I)-B(I)) THEN
              ERROR=ERROR+1
            ENDIF
   70     CONTINUE
C
       RETURN
       END SUBROUTINE SUB2
