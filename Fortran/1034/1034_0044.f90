      SUBROUTINE TVD(JE)
      DIMENSION ALPHA(6)
      ALPHA(2)=1
!$OMP PARALLEL
      ALPHA(JE)=ALPHA(JE)+1
!$OMP END PARALLEL
      if (ALPHA(2)/=2)write(38,*)'error'
      END
      CALL TVD(2)
      print *,'pass'
      END
