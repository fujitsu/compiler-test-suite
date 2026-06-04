!             CVCT5812            LEVEL=4        DATE=84.02.04
! < CVCT5812 >
!   CHANGE OF DO INDEX
  !
  type st1
     integer   A(11,11,11),B(11,11,11)
  end type st1
  type(st1) :: str
  DATA  N1/1/,N2/2/,N10/10/,N11/11/
!
!  INITIALIZE
!
      DO 10 I=1,11
       DO 10 J=1,11
        DO 10 K=1,11
         str%B(I,J,K)  = I * J * K
         str%A(I,J,K)  = I * J + K
   10 CONTINUE
!
!  (1) VECTORIZED BY I
!
      DO 40 I=1,10
       DO 30 K=1,10
        DO 20 J=1,10
         str%A(I,J,K) = str%A(I,J+1,K) + str%B(I,J,K)
   20   CONTINUE
   30  CONTINUE
   40 CONTINUE
      write(6,1) str%A
write(6,*)
!
!  (2) VECTORIZED str%BY I
!
      DO 50 I=1,10
       DO 50 J=1,10
        DO 50 M=1,10
         DO 50 K=1,10
          str%A(I,J,K) = str%A(I+1,J,K) + str%B(I,J,M)
   50 CONTINUE
      write(6,1) str%A
write(6,*)
!
!  (3) VECTORIZED BY J
!
      DO 60 K=N2,N11
       DO 60 M=N1,N10
        DO 60 J=N1,N10
         DO 60 I=N2,N11
          str%A(I,J,K) = str%A(I-1,J+1,K-1) + str%B(I,J,K) * 2.
60        CONTINUE
      write(6,1) str%A
write(6,*)
1     format(15i6)
   END
