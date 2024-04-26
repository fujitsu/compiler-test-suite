      CALL sub()
      END
      SUBROUTINE sub()
      INTEGER a(4,5)
      DO i=1,4
        a(i,:) = (/ 1,2,3,4,5 /)
      ENDDO
      PRINT *,a
      END
