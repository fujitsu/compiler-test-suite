!             CVCT5611            LEVEL=3        DATE=84.02.16
!******************************************************************C
!  1. PROGRAM NAME   : CVCT5611                                    C
!  2. PURPOSE        : MI                                          C
!  3. RESULTS        :                                             C
!  4. ENVIRONMENT    : VPLEVEL(5)                                  C
!  5. HISTORY        : 1984-2-16                                   C
!******************************************************************C
      PROGRAM CV5611
        type st1
           COMPLEX*8 CA(5,5,5,5,5,5,5)
           COMPLEX*8 CB(5,5,5,5,5,5,5)
           REAL*4    RA(5,5,5),RB(5,5,5,5),RC(5,5,5)
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
10    CONTINUE
!
      DO 20 H=1,5
      DO 20 I=1,5
      DO 20 J=1,5
      DO 20 K=1,5
      DO 20 L=1,5
      DO 20 M=1,5
      DO 20 N=1,5
       str%CA(H,I,J,K,L,M,N) = 1.-str%CB(H,I,J,K,L,M,N)
       IF(ABS(str%CA(H,I,J,K,L,M,N)) .GE. 0.) THEN
         str%CB(H,I,J,K,L,M,N)=str%RA(I,J,K)
         IF(ABS(str%CB(H,I,J,K,L,M,N)) .GE. 0.) THEN
           str%RB(I,J,K,L)=str%CB(H,I,J,K,L,M,N)-1.
           IF(str%RA(I,J,K) .GE. 0.) THEN
              str%RA(I,J,K)=str%RA(I,J,K)-str%RB(I,J,K,L)
           ENDIF
         ENDIF
       ENDIF
20    CONTINUE
!
      WRITE(6,*) '***CVCT5611***'
      WRITE(6,*) 'str%CA=',(str%CA(I,I,I,I,I,I,I),I=1,5)
      WRITE(6,*) 'str%RA=',(str%RA(I,I,I),I=1,5)
      WRITE(6,*) 'str%RB=',(str%RB(I,I,I,I),I=1,5)
      WRITE(6,*) 'str%RC=',(str%RC(I,I,I),I=1,5)
      WRITE(6,*) 'I=',I
      STOP
      END
