      kkk=20
      DO I = 1,15
        DO M = 1,15
          CALL sub1 (kkk)
        END DO
      END DO
      write(6,*) kkk
      END
      SUBROUTINE  sub1 (nnn)
      nnn   =   0
      RETURN
      END
