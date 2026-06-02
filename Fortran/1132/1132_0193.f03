!             CVCT5602            LEVEL=4        DATE=84.02.16
!*********************************************************************C
!  1. PROGRAM NAME   : CVCT5602                                       C
!  2. PURPOSE        : MI                                             C
!  3. RESULTS        :                                                C
!  4. ENVIRONMENT    : VPLEVEL(5)                                     C
!  5. HISTORY        : 1984-2-07                                      C
!*********************************************************************C
PROGRAM CV5602
  type st1
     COMPLEX*8 CA(5,5,5,5,5,5,5)
     COMPLEX*8 CB(5,5,5,5,5,5,5)
     REAL*4    RA(5,5,5),RB(5,5,5,5),RC(5,5,5)
  end type st1
  type(st1) :: str
  INTEGER*4 H
  DO  H=1,5
     DO  I=1,5
        DO  J=1,5
           DO  K=1,5
              DO  L=1,5
                 DO  M=1,5
                    DO  N=1,5
                       str%CA(H,I,J,K,L,M,N)=1.
                       str%CB(H,I,J,K,L,M,N)=1.
                       str%RA(I,J,K) =1.
                       str%RC(I,J,K) =1.
                       str%RB(I,J,K,L)= 1.
                    enddo
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo

  !
  DO  H=1,5
     DO  I=1,5
        DO  J=1,5
           DO  K=1,5
              DO  L=1,5
                 DO  M=1,5
                    DO  N=1,5
                       str%CA(H,I,J,K,L,M,N) = 1.+str%CB(H,I,J,K,L,M,N)+str%RA(I,J,K)
                       IF(str%RA(I,J,K) .EQ. str%RB(I,J,K,L)) THEN
                          str%RA(I,J,K) = str%CA(H,I,J,K,L,M,N) + str%CB(H,I,J,K,L,M,N)
                          IF(str%RA(I,J,K) .GE. 1.) THEN
                             str%RC(I,J,K) = str%CA(H,I,J,K,L,M,N) + 5.
                          ENDIF
                       ENDIF
                    enddo
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo

  !
  WRITE(6,*) '***CVCT5602***'
  WRITE(6,*) 'str%CA=',(str%CA(I,I,I,I,I,I,I),I=1,5)
  WRITE(6,*) 'str%RA=',(str%RA(I,I,I),I=1,5)
  WRITE(6,*) 'str%RC=',(str%RC(I,I,I),I=1,5)
  STOP
END PROGRAM CV5602
