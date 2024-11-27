  REAL,target:: x(1)
  x(1) = 42
  CALL weird(x,RESHAPE(x,(/1,1,1/)))
  IF (x(1)/=-10) STOP 'FAIL 2'
  PRINT *,'pass'
CONTAINS
  SUBROUTINE weird(a,b)
    REAL,target:: a(:),b(:,:,:)
    a = -10
    IF (ANY(b/=42)) STOP 'FAIL'
  END SUBROUTINE
END
