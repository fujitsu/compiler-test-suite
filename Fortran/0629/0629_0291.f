      PROGRAM MAIN
        INTEGER*4         I,K,L,C1
        CHARACTER(LEN=15) S_CHA
        CHARACTER(LEN=10) S_CHB
        DIMENSION         S_CHA(10),S_CHB(10)
        DATA S_CHA,S_CHB/10*'ABCDEFGHIJLNMNO',10*'ZYXWVUTSRQ'/

        CALL INIT(L,K,I)

          DO C1=1,9
            S_CHB(C1)(1:L)=''
          END DO

          S_CHB(C1)(1:K+1)=''

          DO C1=1,10
            S_CHA(C1)(1:I+L) =''
          END DO

          print *,S_CHA,S_CHB
          STOP
      END PROGRAM MAIN

      SUBROUTINE INIT(L,K,I)
      INTEGER*4 L,K,I
      L=5
      K=1
      I=5
      END
