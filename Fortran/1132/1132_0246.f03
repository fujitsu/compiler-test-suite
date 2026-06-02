!             CVCT6005            LEVEL=2        DATE=89.10.03
!********************************************************************C
!*  1. PROGRAM NAME   :  CVCT6005                                   *C
!*  2. PURPOSE        :  VGEN FUNCTION TEST                         *C
!*                       . DATA TYPE IS LOGICAL                     *C
!*  3. RESULTS        :  ALL STATEMENTS WILL BE VECTORIZED          *C
!*  4. ENVIRONMENT    :  VPLEVEL(2)                                 *C
!*  5. HISTORY        :  1983.1.10                                  *C
!********************************************************************C
PROGRAM  CV6005
  !   DATA DECLARATION FOR  LOOP 1
  !
  type st1
     LOGICAL*4 L10(10),L11(10),L12(10),L13(10),L14(10),L15(10), &
          L16(10),L17(10),L18(10),L19(10),L20(10),L21(10), &
          L22(10),L23(10),L24(10)
     REAL*4    R10(10),R11(10)
     COMPLEX*8 C10(10),C11(10)
  end type st1
  type(st1) :: str
  !
  LOGICAL*4 L11V,L12V
  !
  DATA  str%L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE., &
       .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
  DATA  str%R10/5.7E01,5.8E01,5.9E01,5.7E01,5.8E01,5.8E01,5.9E01, &
       5.8E01,5.9E01,5.7E01/
  DATA  str%R11/5.5E01,5.8E01,5.9E01,5.6E01,5.7E01,5.8E01,5.9E01, &
       5.5E01,0.0E01,5.7E01/
  DATA  str%C10/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8), &
       (9,9),(10,10)/
  DATA  str%C11/(1.5,2),(2,2),(3.5,4),(4.5,5),(5,5),(6,6),(7.5,8), &
       (8.5,9),(9.5,10),(10,10)/
  !
  !     DATA DECLARATION FOR LOOP 2
  !
  type st2
     LOGICAL*4 L30(10),L31(10),L32(10),L33(10)
     INTEGER*4 I30(10)
     REAL*8    RD30(10),RD31(10),RD32(10)
     COMPLEX*16 CD30(10)
  end type st2
  type(st2) :: str2
  !
  DATA  str2%RD30/10,20,30,40,50,60,70,80,90,100/
  DATA  str2%RD31/ 2, 3, 6, 4,10, 3,12,10,14, 10/
  DATA  str2%CD30/(1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8), &
       (9,9),(10,10)/
  DATA  str2%RD32/2,0,3,0,4,0,5,0,6,0/
  !
  DATA  N/10/
  !
  WRITE(6,*) ' ***** CVCT6005 *****  DATA TYPE LOGICAL*4'
  WRITE(6,*) ' ----- LOOP 1 ----- LOGICAL OPERATION'
  DO  I=1,N
     L11V = str%L10(I)
     L12V = L11V
     str%L11(I) = .TRUE.
     str%L12(I) = L11V
     str%L13(I) = str%L12(I)
     str%L14(I) = .TRUE. .AND. L11V
     str%L15(I) =  L11V  .OR. .FALSE.
     str%L16(I) = .TRUE. .EQV. str%L13(I)
     str%L17(I) =  str%L12(I).NEQV. str%L16(I)
     str%L18(I) = .NOT.str%L16(I) .AND. .NOT.str%L17(I)
     str%L19(I) = L11V .OR. .NOT.L12V
     !
     str%L20(I) = 6.0E01 .GT. 5.9E01
     str%L21(I) = 6.1E01 .GE. str%R10(I)
     str%L22(I) = str%R10(I) .NE. 5.8E01
     str%L23(I) = str%R10(I) .EQ. str%R11(I)
     str%L24(I) =(str%C10(I)* (1.,1.)).EQ.(str%C11(I)-(0.5,1))
  enddo
  WRITE(6,*)        str%L11
  WRITE(6,*)        str%L12
  WRITE(6,*)        str%L13
  WRITE(6,*)        str%L14
  WRITE(6,*)        str%L15
  WRITE(6,*)        str%L16
  WRITE(6,*)        str%L17
  WRITE(6,*)        str%L18
  WRITE(6,*)        str%L19
  WRITE(6,*)        str%L20
  WRITE(6,*) ' ----- LOOP 2 ----- CONVERTION OF VT,MT'

  DO  I=1,N
     str2%L30(I) = 5.0D01 .LT. str2%RD30(I)/str2%RD31(I)

     str2%I30(I) = I

     str2%L31(I) = .TRUE.
     str2%L32(I) = str2%CD30(I) .EQ. (1.0,2.0)*str2%RD32(I)
     str2%L33(I) = str2%L31(I) .AND. str2%L32(I)
  enddo
  !
  WRITE(6,*) str2%L30,str2%I30
  WRITE(6,*) str2%L31
  WRITE(6,*) str2%L32
  WRITE(6,*) str2%L33
  STOP
END PROGRAM CV6005
