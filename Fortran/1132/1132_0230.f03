!             CVCT5815            LEVEL=3        DATE=84.02.06
! < CVCT5815 >
!   CHANGE OF DO INDEX
  !
  type st1
     integer  A(11,11,11),B(11,11,11)
  end type st1
  type(st1) :: str
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
!  (1) VECTORIZED BY I 2ND INDEX IS 'M1'
!
      DO 40 M1=1,10
      DO 40 M2=1,10
       DO 40 I=1,10
        DO 30 K=1,10
         DO 20 J=1,10
          str%A(I,J,K) = str%A(I,J,K) + str%B(I,J,K)
   20   CONTINUE
   30  CONTINUE
   40 CONTINUE
      write(6,1) str%A
!
!  (2) VECTORIZED BY K , 2ND INDEX IS M2
!
      DO 50 I=1,10
       DO 50 M1=1,10
        DO 50 J=1,10
         DO 50 M2=1,10
          DO 50 K=1,10
           str%A(I,J,K) = str%A(I+1,J+1,K) + str%B(I,J,K)
   50 CONTINUE
           write(6,1) str%A
   1 format(15i7)
      END
