!             CVCT5609            LEVEL=4        DATE=84.02.14
!******************************************************************C
!  1. PROGRAM NAME   : CVCT5609                                    C
!  2. PURPOSE        : MI                                          C
!  3. RESULTS        :                                             C
!  4. ENVIRONMENT    : VPLEVEL(5)                                  C
!  5. HISTORY        : 1984-2-14                                   C
!******************************************************************C
      PROGRAM CV5609
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
      DO 20 K = 1 , 5
      DO 20 I = 1 , 5
      DO 20 L = 1 , 5 ,2
      DO 20 H = 1 , 5
      DO 20 M = 1 , 5
      DO 20 N = 1 , 5
      DO 20 J = 1 , 5
        str%CA (I,J,K,L,M,N,H) = 1.+ str%CB (H,I,J,K,L,M,N)
        str%RA (L,M,N) = 1.+ str%CB (H,I,J,K,L,M,N)+H
        str%RB (L,M,N,H) = 1.+ str%CB (H,I,J,K,L,M,N)
        str%RC (L,M,N) = 1.+ str%CB (H,I,J,K,L,M,N)
20    CONTINUE
!
      WRITE(6,*) '***CVCT5609***'
      WRITE(6,*) 'str%CA=',(str%CA(I,I,I,I,I,I,I),I=1,5)
      WRITE(6,*) 'str%RA=',(str%RA(I,I,I),I=1,5)
      STOP
      END
