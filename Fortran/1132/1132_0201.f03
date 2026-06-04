!             CVCT5610            LEVEL=9        DATE=84.02.15
!******************************************************************C
!  1. PROGRAM NAME   : CVCT5610                                    C
!  2. PURPOSE        : MI                                          C
!  3. RESULTS        :                                             C
!  4. ENVIRONMENT    : VPLEVEL(5)                                  C
!  5. HISTORY        : 1984-2-15                                   C
!******************************************************************C
      PROGRAM CV5610
        type st1
           COMPLEX*8 CA(5,5,5,5,5,5,5)
           COMPLEX*8 CB(5,5,5,5,5,5,5)
           REAL*4    RA(5,5,5),RB(5,5,5,5),RC(5,5,5)
        end type st1
        type(st1) :: str
        INTEGER*4 H
      DO 10 H = 1 , 5
      DO 10 I = 1 , 5
      DO 10 J = 1 , 5
      DO 10 K = 1 , 5
      DO 10 L = 1 , 5
      DO 10 M = 1 , 5
      DO 10 N = 1 , 5
       str%CA (H,I,J,K,L,M,N) = 1.
       str%CB (H,I,J,K,L,M,N) = 1.
       str%RA (I,J,K) = 1.
       str%RC (I,J,K) = 1.
       str%RB (I,J,K,L) = 1.
10    CONTINUE
!
       H=1
!
      DO 20 K = 1 , 5
      DO 20 I = 1 , 5
      DO 20 L = 1 , 5
!      DO 20 H = 1 , 5
      DO 20 M = 1 , 5
      DO 20 N = 1 , 5
      DO 20 J = 1 , 5
         S=str%CA(H,I,J,K,L,M,N)
         IF(S .GE. 5.) THEN
           T=str%CB(H,I,J,K,L,M,N) + S
         ELSE
           T=str%CB(H,I,J,K,L,N,M)
         ENDIF
         str%RB(H,I,J,K)=T+S
20    CONTINUE
!
      WRITE(6,*) '***CVCT5609***'
      WRITE(6,*) 'str%RB=',(str%RB(I,I,I,I),I=1,5)
      STOP
      END
