!             CVCT6217            LEVEL=6        DATE=83.08.08
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6217                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . OP-SELECTION TEST                        *C
!*  3. RESULTS        :  LIST/MASK/COMPRESS-EXPAND                  *C
!*  4. ENVIRONMENT    :  VPLEVEL(3)                                 *C
!*  5. HISTORY        :  1983.4.15                                  *C
!********************************************************************C
PROGRAM CV6216
  !
  type st1
     INTEGER    I10(10),I11(10),I12(10)
     REAL*4     R10(10),R11(10)
     REAL*8     D10S,D10(10),D11(10),D12(10)
     COMPLEX*8  C10S,C10(10),C11(10),C12(10)
     COMPLEX*16 CD10S,CD10(10),CD11(10),CD12(10)
     LOGICAL*4  L10S,L10(10),L11(10),L12(10),L13(10),L14(10),L15(10)
  end type st1
  type(st1) :: str
  !
  DATA str%I10/1,2,3,4,5,6,7,8,9,10/,str%I11/2,4,2,4,3,5,3,5,6,6/, &
       str%C10/5*(1,1),5*(0,1)/,str%C11/5*(1,0),5*(1,1)/, &
       str%CD10/3*(4,4),3*(8,8),3*(16,16),(20,20)/, &
       str%CD11/3*(2,2),3*(4,4),3*(1,1),(5,5)/, &
       str%L10/5*.TRUE.,5*.FALSE./,str%L11/10*.FALSE./,str%L12/.TRUE.,.FALSE., &
       .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./, &
       str%L13/10*.FALSE./,str%L14/5*.FALSE.,5*.TRUE./,str%L15/10*.TRUE./, &
       str%R10/10*0/,str%R11/1,2,3,4,5,5*2/,str%D10/5*1,5*2/,str%D11/5*9,5*16/, &
       str%CD12/5*(1,1),5*(2,2)/, &
       str%D12/4*0,4*2,2*1/,N/10/, &
  str%I12/1,2,3,4,5,6,7,8,9,10/
  ! u2 add
  str%C12 = 0
  !
  WRITE(6,*) ' ***** CVCT6217 ***** LIST VECTOR METHOD'

  DO  I=1,N
     I10S = str%I10(I) * str%I11(I)
     R10S = I10S
     D10S = I
     C10S = str%C10(I) + str%C11(I)
     CD10S = str%CD10(I)/str%CD11(I)
     str%L10S = str%L10(I).AND.str%L11(I)
     !
     IF ( str%L12(I) ) THEN
        str%L13(str%I12(I)) = str%L10S
        str%L14(I) = str%L10S .OR. str%L10(I)
        str%L15(str%I12(I)) = str%L10S
        str%R10(str%I12(I)) = str%R11(I) + I
        str%D10(I) = D10S * SQRT(str%D11(I)) + CD10S
        str%L13(I) = I10S .GT. I
        str%CD10(I) = CD10S * str%CD11(I)/str%CD12(I)
        str%C12(str%I12(I)) = str%CD10(I)/CD10S
        D10S = str%D10(I) - str%D11(I)
        str%D12(I) = D10S
     ENDIF
10   CONTINUE
  enddo
  !
  WRITE(6,*) ' str%L12  = ',str%L12
  WRITE(6,*) ' str%L13  = ',str%L13
  WRITE(6,*) ' str%L14  = ',str%L14
  WRITE(6,*) ' str%R10  = ',str%R10
  WRITE(6,*) ' str%D10  = ',str%D10
  WRITE(6,*) ' str%CD10 = ',str%CD10
  WRITE(6,*) ' str%C12  = ',str%C12
  WRITE(6,*) ' str%D12  = ',str%D12

END PROGRAM CV6216
