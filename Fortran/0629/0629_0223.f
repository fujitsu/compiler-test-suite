      INTEGER  IA(3,3)/9*0/
      DO 2 I3=1,1
         CALL W21(IA(1,I3))
         write(6,*) IA(1,2)
  2   CONTINUE
      END

      SUBROUTINE W21(IA2)
      INTEGER IA2(*)
      IA2(4)=2
      END
