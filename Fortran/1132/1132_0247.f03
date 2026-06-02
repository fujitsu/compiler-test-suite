!             CVCT6006            LEVEL=3        DATE=83.01.13
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6006                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . DATA TYPE IS COMPLEX                     *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.                                    *C
!********************************************************************C
PROGRAM  CV6006
  !
  !     DATA DECLARATION FOR LOOP 1
  !
  DATA N/10/
  type st1
     COMPLEX*8  C11(10),C12(10),C13(10),C14(10),C15(10),C16(10)
     complex*8  C17(10)
     !
     !
     !     DATA DECLARATION FOR LOOP 2
     !
     LOGICAL*4   L20(10)
     COMPLEX*8   C20(10),C21(10),C22(10),C23(10),C24(10),C25(10)
  end type st1
  type(st1) :: str

  complex*8   C11V,C12V,C13V
  complex*8   C20V,C21V,C22V
  DATA str%C14/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8), &
       (9,9),(10,10)/,C13V/(0,0)/
  DATA  str%L20/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  DATA  C22V/(0,0)/
  ! u2 add
  str%C20 = 0
  str%C21 = 0
  str%C22 = 0
  str%C23 = 0
  str%C24 = 0
  str%C25 = 0
  !         C20V,C21V,C22V
  !
  WRITE(6,*) '***** CVCT6006 *****  DATA TYPE IS COMPLEX'
  WRITE(6,*) '----- LOOP 1 -----  COMPLEX DATA OPERATION'
  DO  I=1,N
     C11V   = (1.0,1.0)
     C12V   = C11V
     str%C11(I) = (1.0,2.0)
     str%C12(I) = C12V
     str%C13(I) = str%C14(I)
     str%C15(I) = str%C13(I) + (1.5,2.5)
     str%C16(I) = (2.0,3.0) - str%C15(I)
     str%C17(I) = str%C15(I) * str%C16(I)
     C13V = C13V + ( str%C11(I) + str%C12(I) + str%C13(I) + str%C15(I) - str%C16(I) &
          +   str%C17(I) )
  enddo
  !
  WRITE(6,*) str%C11
  WRITE(6,*) str%C12
  WRITE(6,*) str%C13
  WRITE(6,*) str%C15
  WRITE(6,*) str%C16
  WRITE(6,*) str%C17
  WRITE(6,*) C13V
  !
  !    LOOP 2
  !
  WRITE(6,*) '***** CVCT6006 ***** NO 2'
  DO  I=1,N
     IF ( str%L20(I) ) THEN
        C20V   = (1.0,1.0)
        C21V   = C20V
        str%C20(I) = (1.0,2.0)
        str%C21(I) = - C21V
        str%C22(I) = str%C21(I)
        str%C23(I) = str%C22(I) + (1.5,2.5)
        str%C24(I) = (2.0,3.0) - str%C23(I)
        str%C25(I) = str%C24(I) * str%C23(I)
        C22V   = C22V +(str%C20(I)+str%C21(I)+str%C22(I)+str%C23(I)+str%C24(I)+str%C25(I))
     ENDIF
  enddo
  WRITE(6,*) str%C20
  WRITE(6,*) str%C21
  WRITE(6,*) str%C22
  WRITE(6,*) str%C23
  WRITE(6,*) str%C24
  WRITE(6,*) str%C25
  WRITE(6,*) C22V
  STOP
END PROGRAM CV6006
