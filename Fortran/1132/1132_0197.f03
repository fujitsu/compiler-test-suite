!             CVCT5606            LEVEL=2        DATE=84.02.13
!******************************************************************C
!  1. PROGRAM NAME   : CVCT5606                                    C
!  2. PURPOSE        : MI                                          C
!  3. RESULTS        :                                             C
!  4. ENVIRONMENT    : VPLEVEL(5)                                  C
!  5. HISTORY        : 1984-2-13                                   C
!******************************************************************C
      PROGRAM CV5606
        type st1
           COMPLEX*8 CA(5,5,5,5,5,5,5)
           COMPLEX*8 CB(5,5,5,5,5,5,5)
           REAL*4    RA(5,5,5),RB(5,5,5,5),RC(5,5,5),RD(5,5,5)
        end type st1
        type(st1) :: str
        INTEGER*4 H
      DO 10 H=1,5
      DO 10 I=1,5
      DO 10 J=1,5
      DO 10 K=1,5
      DO 10 L=1,5
      DO 10 M=1,5
      DO 10 N=1,5
       str%CA(H,I,J,K,L,M,N)=H+I+J+K+L+M+N
       str%CB(H,I,J,K,L,M,N)=H+I+J+K+L+M+N
       str%RA(I,J,K) =H+I+J+K+L+M+N
       str%RC(I,J,K) =H+I+J+K+L+M+N
       str%RB(I,J,K,L)=H+I+J+K+L+M+N
       str%RD(I,J,K)=H+I+J+K+L+M+N
10    CONTINUE
!
      DO 20 N=1,5
      DO 20 I=1,5
      DO 20 H=1,5
      DO 20 J=1,5
      DO 20 L=1,5
      DO 20 K=1,5
      DO 20 M=1,5
         str%CA(H,I,J,K,L,M,N)=str%RA(I,J,K)+str%RD(L,M,N)
20    CONTINUE
!
      WRITE(6,*) '***CVCT5606***'
      WRITE(6,*) 'str%CA=',(str%CA(I,I,I,I,I,I,I),I=1,5)
      WRITE(6,*) 'str%CB=',(str%CB(I,I,I,I,I,I,I),I=1,5)
      WRITE(6,*) 'str%RA=',(str%RA(I,I,I),I=1,5)
      WRITE(6,*) 'str%RB=',(str%RB(I,I,I,I),I=1,5)
      WRITE(6,*) 'str%RC=',(str%RC(I,I,I),I=1,5)
      WRITE(6,*) 'str%RD=',(str%RD(I,I,I),I=1,5)
      STOP
      END
