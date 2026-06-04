!             CVCT6207            LEVEL=1        DATE=83.04.08
!*******************************************************************C
!  1. PROGRAM NAME : CVCT6207                                       C
!  2. PURPOSE      : INSTRUCTION SELECT TEST                        C
!                      1. MASK                                      C
!                      2. LIST VECTOR                               C
!                      3. COMPRESS / EXPAND                         C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(4),ADV(EVL)                                C
!  5. HISTORY      : 1983-04-05                                     C
!*******************************************************************C
PROGRAM  CV6207
  IMPLICIT  REAL*8(D),COMPLEX*16(C),LOGICAL*4(L)
  type st1
     real*8     DA10(20),DA20(20),DA30(20),DA40(20)
     complex*16 CD10(20),CD20(20),CD30(20),CD40(20)
     logical*4  LD10(20),LD20(20),LD30(20),LD40(20)
  end type st1
  type(st1) :: str
  !
  DATA     str%DA10/20*1.0/,str%DA20/20*2.0/,str%DA30/20*3.0/,str%DA40/20*4.0/
  DATA     str%CD10/20*(2.0,1.0)/,str%CD20/20*(1.0,4.0)/
  DATA     str%CD30/20*(3.0,4.0)/,str%CD40/20*(1.0,2.0)/
  DATA     str%LD10/20*.FALSE./,str%LD20/20*.FALSE./,str%LD30/20*.FALSE./
  DATA     str%LD40/20*.FALSE./
  !
  DO  I=2,20
     str%DA10(I) = str%DA40(I) / str%DA20(I) * str%DA30(I)
     DX = str%DA10(I) - DREAL(str%CD10(I))
     DY = str%DA10(I) / DIMAG(str%CD40(I))
     IF ( DX .GT. DY ) THEN
        str%LD10(I) = .NOT.str%LD20(I) .OR. str%LD30(I)
        DZ = str%DA20(I) * DSQRT( DIMAG(str%CD30(I)) )
        IF ( DX - DZ ) 11,11,12
11      str%LD20(I) = .TRUE.
        str%DA30(I) = ( DX - DZ ) * str%DA30(I)
        GO TO 20
12      CONTINUE
        str%LD30(I) = .NOT. str%LD40(I-1)
        str%DA40(I) = (DZ - DX) * 2.00 + str%DA40(I)
20      CONTINUE
        DX = DMAX1( DX,DZ )
     ENDIF
     str%CD10(I) = DCMPLX(DX,DY)
     str%CD20(I) = str%CD20(I) - DCONJG(str%CD10(I))
10   CONTINUE
  enddo
  WRITE(6,*) ' **** CVCT6207 ** NO.1 **** '
  WRITE(6,*) ' (str%DA10) ',str%DA10
  WRITE(6,*) ' (str%DA30) ',str%DA30
  WRITE(6,*) ' (str%DA40) ',str%DA40
  WRITE(6,*) ' (str%CD10) ',str%CD10
  WRITE(6,*) ' (str%LD10) ',str%LD10
  WRITE(6,*) ' (str%LD20) ',str%LD20
  WRITE(6,*) ' (str%LD30) ',str%LD30
  !
  DO  J=1,10
     N = J +10
     str%LD40(J) = .NOT.str%LD10(J) .OR. str%LD20(N)
     DX = DMAX1( str%DA10(J),str%DA20(J) )
     DY = DMAX1( str%DA10(J),str%DA30(J) )
     IF ( DX .EQ. DY ) THEN
        LA = .NOT. str%LD30(J) .OR. str%LD40(N)
        IF ( str%LD40(J) ) THEN
           str%DA20(J) = str%DA10(J) - str%DA30(N)
        ELSE
           str%DA20(N) = str%DA10(J) - str%DA40(N)
        ENDIF
        str%LD10(J) = str%LD20(J) .AND. LA
        IF ( J .GT. 5 ) THEN
           str%LD20(J) = .NOT.LA
           DX = str%DA20(J) * str%DA30(N)
           DY = DNINT( DSQRT(DX) )
        ENDIF
     ENDIF
     str%CD20(J) = DCMPLX(DX,DY)
     str%CD30(J) = DCMPLX(DY,DX) + str%CD10(N)
     IF ( N .GT. 15 ) GO TO 30
     str%CD40(N) = str%CD10(J) - str%CD20(N) + str%CD30(J)
     str%LD40(J) =  str%LD10(J) .OR. str%LD20(J) .OR. str%LD30(N)
30   CONTINUE
  enddo
  WRITE(6,*) ' **** CVCT6207 *** NO.2 *** '
  WRITE(6,*) ' (str%LD10) ',str%LD10
  WRITE(6,*) ' (str%DA20) ',str%DA20
  WRITE(6,*) ' (str%CD20) ',str%CD20
  WRITE(6,*) ' (str%LD20) ',str%LD20
  WRITE(6,*) ' (str%CD30) ',str%CD30
  WRITE(6,*) ' (str%LD40) ',str%LD40
  WRITE(6,*) ' (str%CD40) ',str%CD40
  STOP
END PROGRAM CV6207
