      PROGRAM MAIN
      REAL A(5000)/5000*1/,M,N,B(100,100),END1,END2
      DATA N/5000/,END1/100/,B/10000*0/

      M = 5000
      END2= 100

      DO 10 I=1,N
        III = I
        A(I) = A(I) + SIN(REAL(III))
   10 CONTINUE

      WRITE(6,*) ' ## TEST 1 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(I),I=1,5000,500)
      WRITE(6,*)

      DO 20 I=1,M
        III = I
        A(I) = A(I) + SIN(REAL(III))
   20 CONTINUE

      WRITE(6,*) ' ## TEST 2 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(I),I=1,5000,500)
      WRITE(6,*)

      DO 30 I=1,5000
        III = I
        A(I) = A(I) + SIN(REAL(III))
   30 CONTINUE

      WRITE(6,*) ' ## TEST 3 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(I),I=1,5000,500)
      WRITE(6,*)

      DO 40 I=1,5000,1
        III = I
        A(I) = A(I) + SIN(REAL(III))
   40 CONTINUE

      WRITE(6,*) ' ## TEST 4 ## '
      WRITE(6,*)
      WRITE(6,*) ' # A # '
      WRITE(6,1) (A(I),I=1,5000,500)
      WRITE(6,*)
      WRITE(6,*) ' # III # '
      WRITE(6,*) III
      WRITE(6,*)

      DO 50 I=1,END1
        DO 50 J=1,END2
          III = I
          JJJ = J
          B(I,J) = B(I,J) + SIN(REAL(III)) + COS(REAL(JJJ))
   50 CONTINUE

      WRITE(6,*) ' ## TEST 5 ## '
      WRITE(6,*)
      WRITE(6,*) ' # B # '
      WRITE(6,1) ((B(I,J),I=1,100,10),J=1,100,10)
      WRITE(6,*)
      WRITE(6,*) ' # III JJJ # '
      WRITE(6,*) III,JJJ
      WRITE(6,*)

    1 FORMAT (5E15.6)
      STOP
      END
