PROGRAM p1
  DO 10 CONCURRENT (i=1:10)
    PRINT *,i
  10 CONTINUE
END PROGRAM