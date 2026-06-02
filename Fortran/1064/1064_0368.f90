  INTEGER :: unum1
  OPEN(NEWUNIT=unum1,FILE="fort.1",STATUS="REPLACE")
  WRITE(unum1,*) "test1"
  CLOSE(unum1)
  write(1,*)unum1
print *,'pass'
  END
