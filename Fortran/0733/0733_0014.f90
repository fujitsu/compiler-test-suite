PROGRAM MAIN
  INTEGER(KIND=8) :: I,K,Two,x,xx
  Two=2_8
  DO K=0,62
     I=Two**K
     WRITE(1,*)K,I
  ENDDO
rewind 1
  DO K=0,62
     I=Two**K
     READ(1,*)x,xx
     if (x/=K)print *,'error1'
     if (xx/=I)print *,'error2'
     if (xx<=0)print *,'error3'
  ENDDO
print *,'pass'
END PROGRAM MAIN
