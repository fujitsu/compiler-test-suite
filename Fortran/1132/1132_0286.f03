!             CVCT6209            LEVEL=1        DATE=83.04.08
!*******************************************************************C
!  1. PROGRAM NAME : CVCT6209                                       C
!  2. PURPOSE      : INSTRUCTION SELECTING                          C
!  3. RESULT       :                                                C
!  4. ENVIRONMENT  : VPL(4)                                         C
!  5. HISTORY      : 1983-04-06                                     C
!*******************************************************************C
PROGRAM  CV6209
  IMPLICIT  REAL*8(D),LOGICAL*4(L)
  type st1
     real*8    DA10(20),DA20(20),DA30(20),DA40(20)
     logical*4 LD10(20),LD20(20),LD30(20),LD40(20)
     integer*4 ID10(20),ID20(20),ID30(20)
  end type st1
  type(st1) :: str
  !
  DATA   str%DA10,str%DA20,str%DA30,str%DA40/20*1.D0,20*2.D0,20*4.D0,20*3.D0/
  DATA   str%LD10,str%LD20,str%LD30,str%LD40/80*.FALSE./
  DATA   str%ID10,str%ID20,str%ID30/30*1,30*2/
  !
  DVAL = 0.0D0
  DO  I=5,15,2
     DX = str%DA10(I) + str%DA20(I) + str%DA30(I)
     DY = str%DA10(I) + str%DA40(I) / str%DA20(I)
     DZ = FLOAT( str%ID20(I) * I )
     DO  J=20,2,-1
        IVAL = str%ID10(J) + J
        DVAL = DVAL + DNINT( DSQRT(str%DA40(J)) )
        str%DA10(J) = DNINT( DX / str%DA10(J) ) - str%DA40(J)
        IF ( DX - DY ) 21,22,22
21      str%LD10(J) = .TRUE.
        str%DA20(J) = DABS( DX - DY ) + str%DA30(J)
        GO TO 25
22      str%LD20(J) = .TRUE.
        str%DA30(J) = DZ + DMIN1( str%DA20(J),str%DA20(J-1) )
25      CONTINUE
        IF ( str%DA10(J) .GE. str%DA20(J) ) str%LD30(J) = .TRUE.
        IF ( I .LE. 10 ) THEN
           str%LD40(J) = .NOT.str%LD10(J) .OR. str%LD20(J)
           str%DA40(J) = DMAX1( str%DA40(J),DX,DY,DZ )
        ELSE
           str%LD40(J) = str%LD10(J) .OR. .NOT.str%LD20(J)
           str%DA40(J) = DMIN1( str%DA40(J-1),str%DA30(J-1) )
        ENDIF
20      CONTINUE
     enddo
     str%ID10(I) = IVAL
     str%ID20(I) = str%ID30(I) + str%ID20(I)
     str%ID30(I) = IDINT( DVAL )
     IF ( str%LD10(I) .AND. str%LD20(I)  .OR. &
          str%LD10(I) .AND. str%LD40(I)      )  THEN
        str%LD30(I) = .TRUE.
        str%DA10(1) = str%DA10(1) + DX + DY - DZ
     ENDIF
10   CONTINUE
  enddo
  WRITE(6,*) ' *** CVCT6209 *** NO.1 *** '
  WRITE(6,*) '(str%DA10) ',str%DA10
  WRITE(6,*) ' (str%ID10) ',str%ID10
  WRITE(6,*) ' (str%LD10) ',str%LD10
  WRITE(6,*) ' (str%DA20) ',str%DA20
  WRITE(6,*) ' (str%LD20) ',str%LD20
  WRITE(6,*) ' (str%DA30) ',str%DA30
  WRITE(6,*) ' (str%ID30) ',str%ID30
  WRITE(6,*) ' (str%LD30) ',str%LD30
  WRITE(6,*) ' (str%DA40) ',str%DA40
  WRITE(6,*) ' (str%LD40) ',str%LD40
  STOP
END PROGRAM CV6209
