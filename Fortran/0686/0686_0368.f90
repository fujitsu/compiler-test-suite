      MODULE MOD
        INTRINSIC MAX,MIN
      END MODULE MOD
      PROGRAM P
        USE MOD, MIN => MAX, MAX => MIN
        REAL*8 :: R,s
        R = -HUGE(0.0)
        s = -HUGE(0.0)
!$OMP PARALLEL DO REDUCTION(MIN: R)
        DO I = 1, 1000
          R = MIN(R, SIN(DBLE(I)))
        END DO
        do i = 1, 1000
          s = min(s, sin(dble(i)))
        end do
        if (abs(r-s)>=1.0e-8) then
          print *,"fail"
          print *,r
          print *,s
        endif
        print *,'pass'
      END PROGRAM P
