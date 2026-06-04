!             CVCT6218            LEVEL=4        DATE=83.04.25
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6218                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . OP-SELECTION TEST                        *C
!*  3. RESULTS        :  LIST/MASK/COMPRESS-EXPAND                  *C
!*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
!*  5. HISTORY        :  1983.4.15                                  *C
!********************************************************************C
PROGRAM CV6216
  !
  type st1
     INTEGER    I10(10),I11(10),I12(10),I13(10)
     REAL       R10(10),R11(10)
     REAL*8     D10(10),D11(10),D12(10),D10S
     COMPLEX    C10(10),C11(10),C12(10)
     COMPLEX*16 CD10(10),CD11(10)
     LOGICAL    L10(10),L11(10),L12(10),L10S
  end type st1
  type(st1) :: str
  !
  DATA  str%L10/5*.TRUE.,5*.FALSE./,str%I10/1,1,1,2,2,2,3,3,3,4/,str%I11/10*2/
  DATA      str%R10/10*8/,str%R11/2,4,2,4,1,3*3,2*2/,str%I12/1,2,3,4,5,6,7,8,9,10/
  DATA R10S/2/,D10S/0/,str%D11/4*1,4*2,2*3/,str%C11/3*(0,1),3*(1,0), &
       3*(1,1),(0,0)/,str%C12/10*(1,1)/,str%D12/10*1/,K/6/,str%CD11/5*(1,1), &
       2*(1,1),2*(1,0),(0,1)/,str%I13/1,2,3,4,5,6,7,8,9,10/,N/10/
  str%D10 = 0
  str%L11 = .FALSE.
  str%C10 = 0
  str%L12 = .FALSE.
  str%CD10 = 0
  !
  DO  I=1,N
     IF (str%L10(I)) THEN
        I10S = str%I10(I)*str%I11(I) - I
        R10S = str%R10(I)/str%R11(I)
        I11S = I10S + str%I10(I)
        str%D10(str%I12(I)) = I10S + I11S +str%R10(I)
        !
        str%L10S = R10S .GT.str%R11(I)
        !
        !*****        str%L11(str%I12(I)) = str%L10S
        str%L11(I) = str%L10S
        !
        D10S = D10S + str%D11(I)
        !
        str%C10(str%I13(I)) = str%C11(I)/str%C12(I)
     ELSE
        I11S = str%I11(I) + str%I10(I) + I
        I10S = I11S * str%I10(I) - I11S
        R10S = str%R10(I) * str%R11(I)
        str%L10S = I11S .LE. I10S
        !
        !*****        str%L12(str%I12(I)) = str%L10S
        str%L12(I) = str%L10S
        !
        str%D12(K) = str%D12(K) + R10S
        !
        str%CD10(str%I12(I)) = str%CD11(I)**I11S
     ENDIF
  enddo
  !
  WRITE(6,*) ' str%D10  = ',str%D10
  WRITE(6,*) ' str%L11  = ',str%L11
  WRITE(6,*) ' D10S = ',D10S
  WRITE(6,*) ' str%C10  = ',str%C10
  WRITE(6,*) ' str%L12  = ',str%L12
  WRITE(6,*) ' str%D12  = ',str%D12
  WRITE(6,*) ' str%CD10 = ',str%CD10
  !

END PROGRAM CV6216
