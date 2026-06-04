!             CVCT5813            LEVEL=7        DATE=84.02.04
! < CVCT5813 >
!   CHANGE OF DO INDEX
  !
  integer *8 i,j,N2
    type st1
       integer*8   A(101,11)
    end type st1
    type(st1) :: str
      DATA   N2/2/
!
!  INITIALIZE
!
      DO 10 I=1,101
       DO 10 J=1,11
         str%A(I,J)  = I * J
   10 CONTINUE
!
!  (1) VECTORIZED BY I
!
      DO 40 I=1,100
       DO 20 J=1,10
        str%A(I,J) = str%A(I,J+1) + 1.
   20   CONTINUE
   40 CONTINUE
      write(6,1) str%A
!
!  (2) VECTORIZED BY I
!
      DO 50 I=1,100
       DO 50 J=1,10
        str%A(I,J) = str%A(I+1,J) + 1.
   50 CONTINUE
      write(6,1) str%A
!
!  (3) VECTORIZED BY I
!
      DO 60 I=N2,100
       DO 60 J=1,10
        str%A(I,J) = str%A(I-1,J) + 1.
   60 CONTINUE
      write(6,1) str%A
1 format(15i5)
   END
