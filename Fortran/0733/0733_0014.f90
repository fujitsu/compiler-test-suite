PROGRAM MAIN
  INTEGER(KIND=8) :: I,K,Two,x,xx
  Two=2_8
  DO K=0,62
     I=Two**K
     WRITE(15,*)K,I
  ENDDO
rewind 15
  DO K=0,62
     I=Two**K
     READ(15,*)x,xx
     if (x/=K)print *,'error1'
     if (xx/=I)print *,'error2'
     if (xx<=0)print *,'error3'
  ENDDO
print *,'pass'
END PROGRAM MAIN
