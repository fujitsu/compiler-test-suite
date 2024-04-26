            SUBROUTINE SUB
            COMPLEX(KIND=8) :: C8,D8
            COMPLEX(KIND=4) :: C4,D4
            COMPLEX(KIND=2) :: C2,D2
            DATA C8%RE /2.0/
            DATA C4%RE /2.0/
            DATA C2%RE /2.0/
            DATA C8%IM /3.0/
            DATA C4%IM /3.0/
            DATA C2%IM /3.0/
          D8%RE=2.0
          D4%RE=2.0
          D2%RE=2.0
          D8%IM=3.0
          D4%IM=3.0
          D2%IM=3.0
        IF (C8%RE /= D8%RE) PRINT *,101
        IF (C4%RE /= D4%RE) PRINT *,102
        IF (C2%RE /= D2%RE) PRINT *,103
        IF (C8%IM /= D8%IM) PRINT *,104
        IF (C4%IM /= D4%IM) PRINT *,105
        IF (C2%IM /= D2%IM) PRINT *,106
       END SUBROUTINE SUB
       CALL SUB
       PRINT *,'PASS'
       END
