!             CVCT6219            LEVEL=1        DATE=83.06.22
!             CVCT6219            LEVEL=4        DATE=83.04.23
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6219                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . OP-SELECTION TEST                        *C
!*  3. RESULTS        :  LIST/MASK/COMPRESS-EXPAND                  *C
!*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
!*  5. HISTORY        :  1983.4.15                                  *C
!********************************************************************C
PROGRAM CV6219
  type st1
     INTEGER  I10(2),I30(2,2,10)
     LOGICAL  L10(10),L30(10,2,2),L20(2,10),L31(10,2,2)
     REAL     R10(10)
     REAL*8   D10(10),D20(10,2),D30(10,2,2),   D31(10,2,2)
     COMPLEX*16 CD10(10),CD30(10,2,2),CD20(2,10),CD21(2,2)
  end type st1
  type(st1) :: str
  INTEGER  LIST(10)
  REAL*8 D10S,D11S,D12S
  logical L10S,L11S
  complex*16 CD10S
  !
  !
  DATA str%I10/1,2/,str%I30/10*1,10*2,10*3,10*4/,LIST/1,2,1,2,1,2,1,2,1,2/
  DATA str%L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE./,str%L30/40*.FALSE./
  DATA str%L20/2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE., &
       2*.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,2*.TRUE./
  DATA str%L31/40*.FALSE./
  DATA str%D10/1,2,3,4,5,6,7,8,9,10/,str%D20/5*1,5*2,5*3,5*4/, &
       str%D30/10*1,10*2,10*3,10*4/,D11S/5/
  DATA str%CD10/4*(4,4),4*(8,8),(1,0),(0,1)/,str%CD30/10*(1,1),10*(1,0), &
       10*(0,1),10*(2,2)/
  DATA I11S/0/,str%R10/10*0/,str%CD20/20*(0,0)/,I12S/0/,str%CD21/(1,1),(2,2), &
       (3,3),(4,4)/,str%D31/40*0/,N2/2/,N10/10/
  ! u2 add
  D12S = 0
  !
  WRITE(6,*) ' ***** LIST VECTOR METHOD *****'
  DO  I=1,N2
     DO  J=1,N2
        DO  K = 1,N10
           I10S = str%I10(I) * str%I30(I,J,K)
           L10S = str%L10(K) .OR. str%L30(K,J,I)
           IF (   L10S     )  THEN
              D10S = str%D10(K) + str%D20(K,J) - str%D30(K,J,I)
              D12S = D10S
              CD10S = str%CD10(K)/str%CD30(K,J,I)
              I11S = I11S + I10S + I
              D11S = DMAX1( str%D10(K),D11S)
              str%L20(J,K) = L10S
              str%R10(LIST(K)) = D10S + REAL(I)
              str%CD20(J,LIST(K)) = CD10S
           ELSE
              D10S = str%D10(LIST(K))
              I12S = I12S - I10S
              CD10S = str%CD21(J,I) + str%CD30(LIST(K),J,I)
              D12S = I10S + str%D30(K,LIST(K),I)
              L11S = L10S .OR. str%L20(J,K)
              str%L31(LIST(K),J,I) = L11S
           ENDIF
           D10S = D10S + str%D10(J)
           str%D31(K,J,I) = D10S + CD10S + D12S
30         CONTINUE
20         CONTINUE
10         CONTINUE
        enddo
     enddo
  enddo
  !
  WRITE(6,*) ' I11S = ',I11S
  WRITE(6,*) ' D11S = ',D11S
  WRITE(6,*) ' str%L20  = ',str%L20
  WRITE(6,*) ' str%R10  = ',str%R10
  WRITE(6,*) ' str%CD20 = ',str%CD20
  WRITE(6,*) ' I12S = ',I12S
  WRITE(6,*) ' str%L31  = ',str%L31
  WRITE(6,*) ' str%D31  = ',str%D31

END PROGRAM CV6219
