      PROGRAM MAIN
      INTEGER A
      WRITE(6,*)'#### START ####'
      A=0
  100 WRITE(6,*)'*** LABEL 1,5 ***'
      IF(A) 200,300,400
  200 WRITE(6,*)'*** LABEL 3,6 ***'
      IF(A) 500,400,300
  300 WRITE(6,*)'*** LABEL 2,x ***'
      IF(A+10) 400,300,200
  400 WRITE(6,*)'*** LABEL 4,x ***'
      A=A-10
      GO TO 100
  500 WRITE(6,*)'*** LABEL x,7 ***'
      WRITE(6,*)'####  END  ####'
      END
