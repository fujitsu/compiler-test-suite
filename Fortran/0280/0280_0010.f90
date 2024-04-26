      SUBROUTINE SUB
      TYPE(COMPLEX(KIND=2)) :: C2,D2
      TYPE(REAL(KIND=2))    :: R2,RR2
         DATA C2%RE,C2%IM,R2 /2.0_2,3.0_2,5.0_2/ 
          D2%RE=2.0_2
          D2%IM=3.0_2
          RR2= 5.0_2
        IF (C2%RE /= D2%RE) PRINT *,'103'
        IF (C2%IM /= D2%IM) PRINT *,'104'
        IF (R2   /= RR2) PRINT *,'105'
       END SUBROUTINE SUB
       CALL SUB
       PRINT *,'PASS'
       END
