MODULE MOD_A
  IMPLICIT NONE
  CHARACTER(LEN=10 ) :: String
!$OMP THREADPRIVATE (String)
END MODULE MOD_A

MODULE MOD_B
  USE MOD_A, ONLY:  String
  IMPLICIT NONE
END MODULE MOD_B


  USE MOD_B
  USE MOD_A

  String = 'Hello'
print *,'pass'

END
