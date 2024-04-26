      MODULE MOD
      TYPE :: force_type
        REAL(KIND(0D0))  Xext
        REAL(KIND(0D0))  Yext
        REAL(KIND(0D0))  Zext
        REAL(KIND(0D0))  Xint
        REAL(KIND(0D0))  Yint
        REAL(KIND(0D0))  Zint
      END TYPE
      TYPE (force_type), DIMENSION(:), ALLOCATABLE :: FORCE
      END MODULE

      SUBROUTINE SUB(NUMRT)
      USE MOD
      DO i = 1,NUMRT
        FORCE(i) = force_type (0,0,0,0,0,0)
      ENDDO
      END 

      PROGRAM MAIN
      USE MOD
      ALLOCATE( FORCE(10) )
      CALL SUB(10)
      IF( FORCE(5)% Xext == 0 ) THEN
        PRINT *,"PASS"
      ELSE
        PRINT *,"NG"
      ENDIF
      END
