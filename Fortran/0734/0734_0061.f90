REAL ,DIMENSION(1,1)::X
  DO K=1,1
    KK=8
    X=1.
    SELECT CASE( 1 )
      CASE (-1:)
        KK=KK-(3)
    END SELECT
  END DO
if (5/=KK)print *,'error-1'
if (1./=X(1,1))print *,'error-2'
print *,'pass'
END
