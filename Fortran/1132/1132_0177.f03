module mm
  type st1
     REAL*8      D11(10),D12(10),D13(10),DS1,DS2,DS3
     REAL*8      D21(10,10),D22(10,10),D23(10,10)
     REAL*8      D31(10,10,10),D32(10,10,10),D33(10,10,10)
     REAL*8      D41(8,8,8,8),D42(8,8,8,8)
     REAL*8      D51(5,5,5,5,5),D52(5,5,5,5,5)
     REAL*8      D61(5,3,3,3,3,2),D62(5,3,3,3,3,2)
     REAL*4      E11(10),E12(10),E13(10),ES1,ES2,ES3
     REAL*4      E21(10,10),E22(10,10),E23(10,10)
     REAL*4      E31(10,10,10),E32(10,10,10),E33(10,10,10)
     REAL*4      E41(8,8,8,8),E42(8,8,8,8)
     REAL*4      E51(5,5,5,5,5),E52(5,5,5,5,5)
     REAL*4      E61(5,3,3,3,3,2),E62(5,3,3,3,3,2)
     COMPLEX*16  CD11(10),CD12(10),CD13(10),CDS1,CDS2,CDS3
     COMPLEX*16  CD21(10,10),CD22(10,10),CD23(10,10)
     COMPLEX*16  CD31(10,10,10),CD32(10,10,10),CD33(10,10,10)
     COMPLEX*16  CD41(8,8,8,8),CD42(8,8,8,8)
     COMPLEX*16  CD51(5,5,5,5,5),CD52(5,5,5,5,5)
     COMPLEX*16  CD61(5,3,3,3,3,2),CD62(5,3,3,3,3,2)
     COMPLEX*8   CE11(10),CE12(10),CE13(10),CES1,CES2,CES3
     COMPLEX*8   CE21(10,10),CE22(10,10),CE23(10,10)
     COMPLEX*8   CE31(10,10,10),CE32(10,10,10),CE33(10,10,10)
     COMPLEX*8   CE41(8,8,8,8),CE42(8,8,8,8)
     COMPLEX*8   CE51(5,5,5,5,5),CE52(5,5,5,5,5)
     COMPLEX*8   CE61(5,3,3,3,3,2),CE62(5,3,3,3,3,2)
     INTEGER*4   N11(10),N12(10),N13(10),NS1,NS2,NS3
     INTEGER*4   N21(10,10),N22(10,10),N23(10,10)
     INTEGER*4   N31(10,10,10),N32(10,10,10),N33(10,10,10)
     INTEGER*4   N41(8,8,8,8),N42(8,8,8,8)
     INTEGER*4   N51(5,5,5,5,5),N52(5,5,5,5,5)
     INTEGER*4   N61(5,3,3,3,3,2),N62(5,3,3,3,3,2)
     LOGICAL*4   L11(10),L12(10),L13(10),LS1,LS2,LS3
     LOGICAL*4   L21(10,10),L22(10,10),L23(10,10)
     LOGICAL*4   L31(10,10,10),L32(10,10,10),L33(10,10,10)
     LOGICAL*4   L41(8,8,8,8),L42(8,8,8,8)
     LOGICAL*4   L51(5,5,5,5,5),L52(5,5,5,5,5)
     LOGICAL*4   L61(5,3,3,3,3,2),L62(5,3,3,3,3,2)
  end type st1
  type(st1) :: str
end module mm

!             CVCT5318            LEVEL=5        DATE=89.10.05
!
! 1. PROGRAM NAME  : CVCT5318
! 2. PURPOSE       :
! 3. ENVIRONMENT   :
! 4. RESULT        :
! 5. HISTORY       : 1984-11-08
!
PROGRAM CV5318
  use mm
  CALL INITR()
  CALL INITC()
  CALL INITIL()
  DATA N/2/
  !
  DO  I1=1,10
     str%CDS1=I1
     str%L11(I1)=I1.GT.str%NS1
     IF (str%LS1) str%CDS1=-I1
     DO  I2=1,10,2
        str%CD21(I2,I1)=I1+I2*(0.,1.)
        str%CDS1=str%CD21(I2,I1)
        DO  I3=1,2
           str%NS1=str%ES1*I3-2.
           IF(.NOT.str%LS1) str%CD31(I1,I2,I3)=str%CDS1+str%NS1
           str%N31(I1,I2,I3)=IMAG(str%NS1*str%NS1/str%CDS1)
        enddo
     enddo
     str%L12(I1)=str%LS1.OR.str%N21(I1,1).GT.REAL(str%CDS1)
  enddo

  WRITE(6,*) '## CD21 ##'
  WRITE(6,1000)  str%CD21
  WRITE(6,*) '## N31  ##'
  WRITE(6,1001)  str%N31
  WRITE(6,*) '## CDS1 ##'
  WRITE(6,1000)  str%CDS1
  WRITE(6,*) '## L12  ##'
  WRITE(6,1002)  str%L12
  WRITE(6,*) '## L11  ##'
  WRITE(6,1002)  str%L11
1000 FORMAT(' (',E30.15,' , ',E30.15,' )')
1001 FORMAT(/,5(I12,3X))
1002 FORMAT(/,12(L5))
  !
!ocl N.EQ.2
  DO  I1=1,10,10
     IF(str%LS2) str%CDS1=CMPLX(SIN(DFLOAT(I1)),COS(DFLOAT(I1)))
     DO  I2=1,10,N
        str%CD21(I1,I2)=str%CDS1
        DO  I3=1,10
           str%D31(I1,I2,I3)=-str%CDS1*str%CDS1
           str%D31(I1+1,I2,I3)=COS(DFLOAT(I1+I1))
        enddo
     enddo
     str%CDS1=str%CD21(I1,I2-1)
  enddo

  WRITE(6,*) '## CD21 ##'
  WRITE(6,1000)  str%CD21
  WRITE(6,*) '## D31  ##'
  WRITE(6,1005)  str%D31
  WRITE(6,*) '## CDS1 ##'
  WRITE(6,1000)  str%CDS1
1005 FORMAT(/2E39.10)
  !
  STOP
END PROGRAM CV5318

!
!
SUBROUTINE INITR()
  use mm
  !
  DO  I=1,10
     str%E11(I)=0
     str%E12(I)=0
     str%E13(I)=0
     DO  J=1,10
        str%E21(I,J)=0
        str%E22(I,J)=0
        str%E23(I,J)=0
        DO  K=1,10
           str%E31(I,J,K)=0
           str%E32(I,J,K)=0
           str%E33(I,J,K)=0
        enddo
     enddo
  enddo

  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              str%E41(I,J,K,L)=0
              str%E42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN
                    str%E51(I,J,K,L,M)=0
                    str%E52(I,J,K,L,M)=0
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       str%E61(I,J,K,L,M,N)=0
                       str%E62(I,J,K,L,M,N)=0
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo

  DO  I=1,10
     str%D11(I)=0
     str%D12(I)=0
     str%D13(I)=0
     DO  J=1,10
        str%D21(I,J)=0
        str%D22(I,J)=0
        str%D23(I,J)=0
        DO  K=1,10
           str%D31(I,J,K)=0
           str%D32(I,J,K)=0
           str%D33(I,J,K)=0
        enddo
     enddo
  enddo

  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              str%D41(I,J,K,L)=0
              str%D42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN
                    str%D51(I,J,K,L,M)=0
                    str%D52(I,J,K,L,M)=0
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       str%D61(I,J,K,L,M,N)=0
                       str%D62(I,J,K,L,M,N)=0
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo

  str%ES3=3.5
  DO  I1=1,10
     str%E11(I1)=I1
     str%ES1=I1
     str%E12(I1)=str%E11(I1)*str%ES1
     str%E13(I1)=str%E12(I1)
     DO  I2=2,10
        str%E21(I1,I2)=str%E11(I1)/I2
        str%E22(I1,I2)=I2*I1
        str%ES1=I2/I1
        IF(I2.EQ.10) str%E22(I1,1)=0.
        str%E21(I1,I2-1)=str%E21(I1,I2)*str%ES1
        str%E23(I1,I2-1)=0.5
        DO  I3=1,10
           str%E31(I3,I2,I1)=0.
           str%E32(I3,I1,I2)=3.5
           DO  I4=1,4
              str%ES2=I3+I4
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 str%E41(I1,I4,I3,I2)=str%ES2
                 str%E42(I1,I4+4,I2,I3)=str%ES2/4.
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    str%E51(I1,I2,I3,I4,I5)=str%ES2
                    str%E52(I1,I2,I3,I4,I5)=str%ES2/2.
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then
                       str%E61(I1,I2,I3,I4,I5,I6)=0.5
                       str%E62(I1,I2,I3,I4,I5,I6)=100.5
                    ENDIF
                 enddo
              enddo
              str%ES2=I4/2
           enddo
           str%E33(I1,I2,I3)=str%ES2
        enddo
     enddo
  enddo
  !
  !
  str%DS3=3.5
  DO  I1=1,10
     str%D11(I1)=I1
     str%DS1=I1
     str%D12(I1)=str%D11(I1)*str%DS1
     str%D13(I1)=str%D12(I1)
     DO  I2=2,10
        str%D21(I1,I2)=str%D11(I1)/I2
        str%D22(I1,I2)=I2*I1
        str%DS1=I2/I1
        IF(I2.EQ.10) str%D22(I1,1)=0.
        str%D21(I1,I2-1)=str%D21(I1,I2)*str%DS1
        str%D23(I1,I2-1)=0.5
        DO  I3=1,10
           str%D31(I3,I2,I1)=0.
           str%D32(I3,I1,I2)=3.5
           DO  I4=1,4
              str%DS2=I3+I4
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 str%D41(I1,I4,I3,I2)=str%DS2
                 str%D42(I1,I4+4,I2,I3)=str%DS2/4.
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    str%D51(I1,I2,I3,I4,I5)=str%DS2
                    str%D52(I1,I2,I3,I4,I5)=str%DS2/2.
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then
                       str%D61(I1,I2,I3,I4,I5,I6)=0.5
                       str%D62(I1,I2,I3,I4,I5,I6)=100.5
                    ENDIF
                 enddo
              enddo
              str%DS2=I4/2
           enddo
           str%D33(I1,I2,I3)=str%DS2
        enddo
     enddo
  enddo
  RETURN
END SUBROUTINE INITR

!
SUBROUTINE INITC()
  use mm
  !
  DO  I=1,10
     str%CE11(I)=0
     str%CE12(I)=0
     str%CE13(I)=0
     DO  J=1,10
        str%CE21(I,J)=0
        str%CE22(I,J)=0
        str%CE23(I,J)=0
        DO  K=1,10
           str%CE31(I,J,K)=0
           str%CE32(I,J,K)=0
           str%CE33(I,J,K)=0
        enddo
     enddo
  enddo

  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              str%CE41(I,J,K,L)=0
              str%CE42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5)THEN
                    str%CE51(I,J,K,L,M)=0
                    str%CE52(I,J,K,L,M)=0
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       str%CE61(I,J,K,L,M,N)=0
                       str%CE62(I,J,K,L,M,N)=0
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo

  DO  I=1,10
     str%CD11(I)=0
     str%CD12(I)=0
     str%CD13(I)=0
     DO  J=1,10
        str%CD21(I,J)=0
        str%CD22(I,J)=0
        str%CD23(I,J)=0
        DO  K=1,10
           str%CD31(I,J,K)=0
           str%CD32(I,J,K)=0
           str%CD33(I,J,K)=0
        enddo
     enddo
  enddo

  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              str%CD41(I,J,K,L)=0
              str%CD42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5)THEN
                    str%CD51(I,J,K,L,M)=0
                    str%CD52(I,J,K,L,M)=0
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       str%CD61(I,J,K,L,M,N)=0
                       str%CD62(I,J,K,L,M,N)=0
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo

  str%CES3=(3.5,-3.5)
  DO  I1=1,10
     str%CE11(I1)=I1+(1.,.5)
     str%CES1=I1/(0.,1.)
     str%CE12(I1)=str%CE11(I1)*str%CES1
     str%CE13(I1)=str%CE12(I1)
     DO  I2=2,10
        str%CE21(I1,I2)=str%CE11(I1)/I2
        str%CE22(I1,I2)=I2*I1*(0.,2.)
        str%CES1=I2/I1-(1.,1.)
        IF(I2.EQ.10) str%CE22(I1,1)=CMPLX(I1,I2)
        str%CE21(I1,I2-1)=str%CE21(I1,I2)*str%CES1
        str%CE23(I1,I2-1)=0.5-str%CE21(I1,I2-1)
        DO  I3=1,10
           str%CE31(I3,I2,I1)=0.
           str%CE32(I3,I1,I2)=3.5
           DO  I4=1,4
              str%CES2=CMPLX(I3,I4)
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 str%CE41(I1,I4,I3,I2)=str%CES2
                 str%CE42(I1,I4+4,I2,I3)=str%CES2/4.
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    str%CE51(I1,I2,I3,I4,I5)=str%CES2
                    str%CE52(I1,I2,I3,I4,I5)=str%CES2/2.
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then
                       str%CE61(I1,I2,I3,I4,I5,I6)=(.5,.5)
                       str%CE62(I1,I2,I3,I4,I5,I6)=(100.5,100)
                    ENDIF
                 enddo
              enddo
              str%CES2=I4/2+SQRT(CMPLX(0.,I4))
           enddo
           str%CE33(I1,I2,I3)=str%CES2
        enddo
     enddo
  enddo
  !
  !
  str%CDS3=(3.5,-3.5)
  DO  I1=1,10
     str%CD11(I1)=I1+(1.,.5)
     str%CDS1=I1/(0.,1.)
     str%CD12(I1)=str%CD11(I1)*str%CDS1
     str%CD13(I1)=str%CD12(I1)
     DO  I2=2,10
        str%CD21(I1,I2)=str%CD11(I1)/I2
        str%CD22(I1,I2)=I2*I1*(0.,2.)
        str%CDS1=I2/I1-(1.,1.)
        IF(I2.EQ.10) str%CD22(I1,1)=CMPLX(I1,I2)
        str%CD21(I1,I2-1)=str%CD21(I1,I2)*str%CDS1
        str%CD23(I1,I2-1)=0.5-str%CD21(I1,I2-1)
        DO  I3=1,10
           str%CD31(I3,I2,I1)=0.
           str%CD32(I3,I1,I2)=3.5
           DO  I4=1,4
              str%CDS2=CMPLX(I3,I4)
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 str%CD41(I1,I4,I3,I2)=str%CDS2
                 str%CD42(I1,I4+4,I2,I3)=str%CDS2/4.
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    str%CD51(I1,I2,I3,I4,I5)=str%CDS2
                    str%CD52(I1,I2,I3,I4,I5)=str%CDS2/2.
                 ENDIF
                 DO I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then
                       str%CD61(I1,I2,I3,I4,I5,I6)=(.5,.5)
                       str%CD62(I1,I2,I3,I4,I5,I6)=(100.5,100)
                    ENDIF
                 enddo
              enddo
              str%CDS2=I4/2+SQRT(CMPLX(0.,I4))
           enddo
           str%CD33(I1,I2,I3)=str%CDS2
        enddo
     enddo
  enddo
  RETURN
END SUBROUTINE INITC
!
!
SUBROUTINE INITIL()
  use mm
  !
  DO  I=1,10
     str%N11(I)=0
     str%N12(I)=0
     str%N13(I)=0
     DO  J=1,10
        str%N21(I,J)=0
        str%N22(I,J)=0
        str%N23(I,J)=0
        DO  K=1,10
           str%N31(I,J,K)=0
           str%N32(I,J,K)=0
           str%N33(I,J,K)=0
        enddo
     enddo
  enddo

  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              str%N41(I,J,K,L)=0
              str%N42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN
                    str%N51(I,J,K,L,M)=0
                    str%N52(I,J,K,L,M)=0
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       str%N61(I,J,K,L,M,N)=0
                       str%N62(I,J,K,L,M,N)=0
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo

  str%NS3=104
  DO  I1=1,10
     str%N11(I1)=I1
     str%NS1=I1
     str%N12(I1)=str%N11(I1)*str%NS1
     str%N13(I1)=str%N12(I1)
     DO  I2=2,10
        str%N21(I1,I2)=str%N11(I1)*10/I2
        str%N22(I1,I2)=I2*I1
        str%NS1=I2/I1 + str%NS3
        IF(I2.EQ.10) str%N22(I1,1)=0.
        str%N21(I1,I2-1)=str%N21(I1,I2)*str%NS1
        str%N23(I1,I2-1)=0.5
        DO  I3=1,10
           str%N31(I3,I2,I1)=0.
           str%N32(I3,I1,I2)=3.5
           DO  I4=1,4
              str%NS2=I3+I4
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 str%N41(I1,I4,I3,I2)=str%NS2
                 str%N42(I1,I4+4,I2,I3)=str%NS2/3
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    str%N51(I1,I2,I3,I4,I5)=str%NS2
                    str%N52(I1,I2,I3,I4,I5)=str%NS2/2.
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then
                       str%N61(I1,I2,I3,I4,I5,I6)=0.5
                       str%N62(I1,I2,I3,I4,I5,I6)=100.5
                    ENDIF
                 enddo
              enddo
              str%NS2=I4/2
           enddo
           str%N33(I1,I2,I3)=str%NS2
        enddo
     enddo
  enddo
  !
  !
  str%LS3=.TRUE.
  DO  I1=1,10
     str%L11(I1)=str%LS3
     str%LS1=I1.GE.3
     str%L12(I1)=str%L11(I1).AND.str%LS1
     str%L13(I1)=str%L12(I1)
     DO  I2=2,10
        str%L21(I1,I2)=str%L11(I1)
        str%L22(I1,I2)=I2.GT.I1
        str%LS1=I2/I1.NE.0
        IF(I2.EQ.10) str%L22(I1,1)=.FALSE.
        str%L21(I1,I2-1)=str%L21(I1,I2).AND.str%LS1
        str%L23(I1,I2-1)=MOD(I2,2).EQ.0
        DO  I3=1,10
           str%L31(I3,I2,I1)=str%LS3
           str%L32(I3,I1,I2)=str%LS1
           DO  I4=1,4
              str%LS2=I3.LE.I4
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 str%L41(I1,I4,I3,I2)=str%LS2
                 str%L42(I1,I4+4,I2,I3)=str%LS2
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    str%L51(I1,I2,I3,I4,I5)=str%LS2
                    str%L52(I1,I2,I3,I4,I5)=str%LS2.AND.I5.GE.3
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then
                       str%L61(I1,I2,I3,I4,I5,I6)=.FALSE.
                       str%L62(I1,I2,I3,I4,I5,I6)=.TRUE.
                    ENDIF
                 enddo
              enddo
              str%LS2=MOD(I3,2).NE.0
           enddo
           str%L33(I1,I2,I3)=str%LS2
        enddo
     enddo
  enddo
  RETURN
END SUBROUTINE INITIL
