      IMPLICIT   LOGICAL(B)
      TYPE TYB501
        SEQUENCE
        REAL           R4S01
      END TYPE TYB501
       TYPE(TYB501)      :: TY1A1(3)
      LARG2 = B50FUN12(TY1A1)
print *,'pass'
      END
      FUNCTION B50FUN12(A)
        TYPE TYB501
          SEQUENCE
          REAL           R4S01
        END TYPE TYB501
        TYPE(TYB501),INTENT(OUT)  :: A(*)
        LOGICAL  B50FUN12
        B50FUN12 = .TRUE.
        DO I=1,3
          A(1)%R4S01 = 1.1
        END DO
      END FUNCTION
