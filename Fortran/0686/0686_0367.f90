      MODULE Mo
        INTRINSIC MAX
      END MODULE Mo
      PROGRAM P
        USE Mo, REN => MAX
        M = 0
!$OMP PARALLEL DO REDUCTION(REN: M)
        DO I = 1, 100
          M = MAX(M,I)
        END DO
        if (m /= 100) print *,"fail"
        print *,'pass'
      END PROGRAM P
