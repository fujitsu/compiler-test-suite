  REAL,target:: x(1)
  x(1) = 42
  write(1)1
  rewind 1
  read(1) j
  CALL weird(x,RESHAPE(x,(/j,j,j/)))
  IF (x(1)/=-10) STOP 'FAIL 2'
  PRINT *,'pass'
CONTAINS
  SUBROUTINE weird(a,b)
    REAL,target:: a(:),b(:,:,:)
    a = -10
    IF (ANY(b/=42)) STOP 'FAIL'
  END SUBROUTINE
END
