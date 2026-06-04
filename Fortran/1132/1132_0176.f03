!             CVCT5315            LEVEL=1        DATE=85.11.22
!
! 1. PROGRAM NAME  : CVCT5315
! 2. PURPOSE       :
! 3. ENVIRONMENT   :
! 4. RESULT        :
! 5. HISTORY       : 1984-11-08
!
PROGRAM CV5315
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
     COMPLEX*8   CE41(8,8,8,8)/4096*(0.,0.)/,CE42(8,8,8,8)
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
  CALL INITR( &
  str%D11    ,str%D12    ,str%D13    ,str%DS1,str%DS2,str%DS3, &
  str%D21       ,str%D22       ,str%D23          , &
  str%D31          ,str%D32          ,str%D33    , &
  str%D41         ,str%D42                   , &
  str%D51           ,str%D52                 , &
  str%D61             ,str%D62               , &
  str%E11    ,str%E12    ,str%E13    ,str%ES1,str%ES2,str%ES3, &
  str%E21       ,str%E22       ,str%E23        , &
  str%E31          ,str%E32          ,str%E33    , &
  str%E41         ,str%E42         , &
  str%E51           ,str%E52       , &
  str%E61             ,str%E62)
  CALL INITC( &
  str%CD11   ,str%CD12   ,str%CD13   ,str%CDS1,str%CDS2,str%CDS3, &
  str%CD21      ,str%CD22      ,str%CD23          , &
  str%CD31         ,str%CD32         ,str%CD33    , &
  str%CD41        ,str%CD42                   , &
  str%CD51          ,str%CD52                 , &
  str%CD61            ,str%CD62               , &
  str%CE11   ,str%CE12   ,str%CE13   ,str%CES1,str%CES2,str%CES3, &
  str%CE21       ,str%CE22       ,str%CE23        , &
  str%CE31         ,str%CE32          ,str%CE33    , &
  str%CE41         ,str%CE42         , &
  str%CE51           ,str%CE52       , &
  str%CE61             ,str%CE62)
  CALL INITIL( &
  str%N11    ,str%N12    ,str%N13    ,str%NS1,str%NS2,str%NS3, &
  str%N21       ,str%N22       ,str%N23          , &
  str%N31          ,str%N32          ,str%N33    , &
  str%N41         ,str%N42                   , &
  str%N51           ,str%N52                 , &
  str%N61             ,str%N62               , &
  str%L11    ,str%L12    ,str%L13    ,str%LS1,str%LS2,str%LS3, &
  str%L21       ,str%L22       ,str%L23        , &
  str%L31          ,str%L32          ,str%L33    , &
  str%L41         ,str%L42         , &
  str%L51           ,str%L52       , &
  str%L61             ,str%L62)
  DATA      N/1/
  !

  DO   I0=1,2
     str%ES1=I0**I0
     DO  I1=1,5
        IS2=str%N11(I1)
        DO  I2=1,3
           DO  I3=1,3
              IS3=I3*I1
              DO  I4=1,3
                 IS1=str%N41(I4,I3,I2,I1)
                 DO  I5=1,3
                    DO  I6=1,2
                       IS2=str%N11(I1)-1
                       DO  I7=1,3
                          IS2=IS2*IS1
                          str%N61(I1,I2,I3,I4,I5,I6)=IS2-IS3+str%ES1
                       enddo
                    enddo
                 enddo
                 str%N42(I4,I3,I2,I1)=IS2/3
              enddo
           enddo
        enddo
        str%D11(I1)=I6
     enddo
  enddo
  WRITE(6,*) str%D11
  WRITE(6,*) str%N42
  WRITE(6,*) str%N61
  !
  DO  I1=1,5
     str%DS1=str%E11(I1)
     str%LS1=str%DS1.GT.0.0D0
     DO  I2=1,3
        DO  I3=1,3
           str%DS1=I3*N
           DO  I4=1,3
              DO  I5=1,3
                 str%L41(I5,I4,I3,I2)=str%LS1
                 DO  I6=1,2
                    DO  I7=1,3
                       str%L61(I1,I2,I3,I4,I5,I6)=str%LS1.OR.(str%DS1.GT.MIN(I7,I5))
                    enddo
                 enddo
              enddo
           enddo
        enddo
        str%N41(I1,I2,I1,I2)=str%DS1
     enddo
  enddo
  WRITE(6,*) str%L41
  WRITE(6,*) str%L61
  WRITE(6,*) str%N41
  !
  STOP
END program

!
SUBROUTINE INITR(                                         &
     D11    ,D12    ,D13    ,DS1,DS2,DS3,    &
     D21       ,D22       ,D23          ,    &
     D31          ,D32          ,D33    ,    &
     D41         ,D42                   ,    &
     D51           ,D52                 ,    &
     D61             ,D62               ,    &
     E11    ,E12    ,E13    ,ES1,ES2,ES3,    &
     E21       ,E22       ,E23        ,      &
     E31          ,E32          ,E33    ,    &
     E41         ,E42         ,              &
     E51           ,E52       ,              &
     E61             ,E62)
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

  DO I=1,10
     E11(I)=0
     E12(I)=0
     E13(I)=0
     DO J=1,10
        E21(I,J)=0
        E22(I,J)=0
        E23(I,J)=0
        DO K=1,10
           E31(I,J,K)=0
           E32(I,J,K)=0
           E33(I,J,K)=0
        enddo
     enddo
  enddo
  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              E41(I,J,K,L)=0
              E42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN
                    E51(I,J,K,L,M)=0
                    E52(I,J,K,L,M)=0
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       E61(I,J,K,L,M,N)=0
                       E62(I,J,K,L,M,N)=0
                    ENDIF
99998               CONTINUE
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo
  DO  I=1,10
     D11(I)=0
     D12(I)=0
     D13(I)=0
     DO  J=1,10
        D21(I,J)=0
        D22(I,J)=0
        D23(I,J)=0
        DO  K=1,10
           D31(I,J,K)=0
           D32(I,J,K)=0
           D33(I,J,K)=0
        enddo
     enddo
  enddo
  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              D41(I,J,K,L)=0
              D42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN
                    D51(I,J,K,L,M)=0
                    D52(I,J,K,L,M)=0
                 ENDIF
                 DO N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       D61(I,J,K,L,M,N)=0
                       D62(I,J,K,L,M,N)=0
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo
  ES3=3.5
  DO  I1=1,10
     E11(I1)=I1
     ES1=I1
     E12(I1)=E11(I1)*ES1
     E13(I1)=E12(I1)
     DO  I2=2,10
        E21(I1,I2)=E11(I1)/I2
        E22(I1,I2)=I2*I1
        ES1=I2/I1
        IF(I2.EQ.10) E22(I1,1)=0.
        E21(I1,I2-1)=E21(I1,I2)*ES1
        E23(I1,I2-1)=0.5
        DO  I3=1,10
           E31(I3,I2,I1)=0.
           E32(I3,I1,I2)=3.5
           DO  I4=1,4
              ES2=I3+I4
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 E41(I1,I4,I3,I2)=ES2
                 E42(I1,I4+4,I2,I3)=ES2/4.
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    E51(I1,I2,I3,I4,I5)=ES2
                    E52(I1,I2,I3,I4,I5)=ES2/2.
                 ENDIF
                 DO I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) &
                         THEN
                       E61(I1,I2,I3,I4,I5,I6)=0.5
                       E62(I1,I2,I3,I4,I5,I6)=100.5
                    ENDIF
                 enddo
              enddo
              ES2=I4/2
           enddo
           E33(I1,I2,I3)=ES2
        enddo
     enddo
  enddo

  DS3=3.5
  DO  I1=1,10
     D11(I1)=I1
     DS1=I1
     D12(I1)=D11(I1)*DS1
     D13(I1)=D12(I1)
     DO  I2=2,10
        D21(I1,I2)=D11(I1)/I2
        D22(I1,I2)=I2*I1
        DS1=I2/I1
        IF(I2.EQ.10) D22(I1,1)=0.
        D21(I1,I2-1)=D21(I1,I2)*DS1
        D23(I1,I2-1)=0.5
        DO  I3=1,10
           D31(I3,I2,I1)=0.
           D32(I3,I1,I2)=3.5
           DO  I4=1,4
              DS2=I3+I4
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 D41(I1,I4,I3,I2)=DS2
                 D42(I1,I4+4,I2,I3)=DS2/4.
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    D51(I1,I2,I3,I4,I5)=DS2
                    D52(I1,I2,I3,I4,I5)=DS2/2.
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then
                       D61(I1,I2,I3,I4,I5,I6)=0.5
                       D62(I1,I2,I3,I4,I5,I6)=100.5
                    ENDIF
                 enddo
              enddo
              DS2=I4/2
           enddo
           D33(I1,I2,I3)=DS2
        enddo
     enddo
  enddo

  RETURN
END SUBROUTINE INITR

SUBROUTINE INITC(                                          &
     CD11   ,CD12   ,CD13   ,CDS1,CDS2,CDS3,   &
     CD21      ,CD22      ,CD23          ,     &
     CD31          ,CD32          ,CD33    ,   &
     CD41         ,CD42                   ,    &
     CD51           ,CD52                 ,    &
     CD61             ,CD62               ,    &
     CE11   ,CE12   ,CE13   ,CES1,CES2,CES3,   &
     CE21      ,CE22      ,CE23        ,       &
     CE31         ,CE32         ,CE33    ,     &
     CE41        ,CE42         ,               &
     CE51          ,CE52       ,               &
     CE61            ,CE62)
  COMPLEX*16 CD11(10),CD12(10),CD13(10),CDS1,CDS2,CDS3
  COMPLEX*16 CD21(10,10),CD22(10,10),CD23(10,10)
  COMPLEX*16 CD31(10,10,10),CD32(10,10,10),CD33(10,10,10)
  COMPLEX*16 CD41(8,8,8,8),CD42(8,8,8,8)
  COMPLEX*16 CD51(5,5,5,5,5),CD52(5,5,5,5,5)
  COMPLEX*16 CD61(5,3,3,3,3,2),CD62(5,3,3,3,3,2)
  COMPLEX*8  CE11(10),CE12(10),CE13(10),CES1,CES2,CES3
  COMPLEX*8  CE21(10,10),CE22(10,10),CE23(10,10)
  COMPLEX*8  CE31(10,10,10),CE32(10,10,10),CE33(10,10,10)
  COMPLEX*8  CE41(8,8,8,8),CE42(8,8,8,8)
  COMPLEX*8  CE51(5,5,5,5,5),CE52(5,5,5,5,5)
  COMPLEX*8  CE61(5,3,3,3,3,2),CE62(5,3,3,3,3,2)

  DO  I=1,10
     CE11(I)=0
     CE12(I)=0
     CE13(I)=0
     DO  J=1,10
        CE21(I,J)=0
        CE22(I,J)=0
        CE23(I,J)=0
        DO  K=1,10
           CE31(I,J,K)=0
           CE32(I,J,K)=0
           CE33(I,J,K)=0
        enddo
     enddo
  enddo
  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              CE41(I,J,K,L)=0
              CE42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5)THEN
                    CE51(I,J,K,L,M)=0
                    CE52(I,J,K,L,M)=0
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       CE61(I,J,K,L,M,N)=0
                       CE62(I,J,K,L,M,N)=0
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo
  DO  I=1,10
     CD11(I)=0
     CD12(I)=0
     CD13(I)=0
     DO  J=1,10
        CD21(I,J)=0
        CD22(I,J)=0
        CD23(I,J)=0
        DO  K=1,10
           CD31(I,J,K)=0
           CD32(I,J,K)=0
           CD33(I,J,K)=0
        enddo
     enddo
  enddo
  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              CD41(I,J,K,L)=0
              CD42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5)THEN
                    CD51(I,J,K,L,M)=0
                    CD52(I,J,K,L,M)=0
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       CD61(I,J,K,L,M,N)=0
                       CD62(I,J,K,L,M,N)=0
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo

  CES3=(3.5,-3.5)
  DO  I1=1,10
     CE11(I1)=I1+(1.,.5)
     CES1=I1/(0.,1.)
     CE12(I1)=CE11(I1)*CES1
     CE13(I1)=CE12(I1)
     DO  I2=2,10
        CE21(I1,I2)=CE11(I1)/I2
        CE22(I1,I2)=I2*I1*(0.,2.)
        CES1=I2/I1-(1.,1.)
        IF(I2.EQ.10) CE22(I1,1)=CMPLX(I1,I2)
        CE21(I1,I2-1)=CE21(I1,I2)*CES1
        CE23(I1,I2-1)=0.5-CE21(I1,I2-1)
        DO  I3=1,10
           CE31(I3,I2,I1)=0.
           CE32(I3,I1,I2)=3.5
           DO  I4=1,4
              CES2=CMPLX(I3,I4)
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 CE41(I1,I4,I3,I2)=CES2
                 CE42(I1,I4+4,I2,I3)=CES2/4.
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    CE51(I1,I2,I3,I4,I5)=CES2
                    CE52(I1,I2,I3,I4,I5)=CES2/2.
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then

                       CE61(I1,I2,I3,I4,I5,I6)=(.5,.5)
                       CE62(I1,I2,I3,I4,I5,I6)=(100.5,100)
                    ENDIF
                 enddo
              enddo
              CES2=I4/2+SQRT(CMPLX(0.,I4))
           enddo
           CE33(I1,I2,I3)=CES2
        enddo
     enddo
  enddo
  CDS3=(3.5,-3.5)
  DO  I1=1,10
     CD11(I1)=I1+(1.,.5)
     CDS1=I1/(0.,1.)
     CD12(I1)=CD11(I1)*CDS1
     CD13(I1)=CD12(I1)
     DO  I2=2,10
        CD21(I1,I2)=CD11(I1)/I2
        CD22(I1,I2)=I2*I1*(0.,2.)
        CDS1=I2/I1-(1.,1.)
        IF(I2.EQ.10) CD22(I1,1)=CMPLX(I1,I2)
        CD21(I1,I2-1)=CD21(I1,I2)*CDS1
        CD23(I1,I2-1)=0.5-CD21(I1,I2-1)
        DO  I3=1,10
           CD31(I3,I2,I1)=0.
           CD32(I3,I1,I2)=3.5
           DO  I4=1,4
              CDS2=CMPLX(I3,I4)
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 CD41(I1,I4,I3,I2)=CDS2
                 CD42(I1,I4+4,I2,I3)=CDS2/4.
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    CD51(I1,I2,I3,I4,I5)=CDS2
                    CD52(I1,I2,I3,I4,I5)=CDS2/2.
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then

                       CD61(I1,I2,I3,I4,I5,I6)=(.5,.5)
                       CD62(I1,I2,I3,I4,I5,I6)=(100.5,100)
                    ENDIF
                 enddo
              enddo
              CDS2=I4/2+SQRT(CMPLX(0.,I4))
           enddo
           CD33(I1,I2,I3)=CDS2
        enddo
     enddo
  enddo
  RETURN
END SUBROUTINE INITC


SUBROUTINE INITIL(                                &
     I11    ,I12    ,I13    ,IS1,IS2,IS3,  &
     I21       ,I22       ,I23          ,  &
     I31          ,I32          ,I33    ,  &
     I41         ,I42                   ,  &
     I51           ,I52                 ,  &
     I61             ,I62               ,  &
     L11    ,L12    ,L13    ,LS1,LS2,LS3,  &
     L21       ,L22       ,L23        ,    &
     L31          ,L32          ,L33    ,  &
     L41         ,L42         ,            &
     L51           ,L52       ,            &
     L61             ,L62)
  INTEGER*4   I11(10),I12(10),I13(10),IS1,IS2,IS3
  INTEGER*4   I21(10,10),I22(10,10),I23(10,10)
  INTEGER*4   I31(10,10,10),I32(10,10,10),I33(10,10,10)
  INTEGER*4   I41(8,8,8,8),I42(8,8,8,8)
  INTEGER*4   I51(5,5,5,5,5),I52(5,5,5,5,5)
  INTEGER*4   I61(5,3,3,3,3,2),I62(5,3,3,3,3,2)
  LOGICAL*4   L11(10),L12(10),L13(10),LS1,LS2,LS3
  LOGICAL*4   L21(10,10),L22(10,10),L23(10,10)
  LOGICAL*4   L31(10,10,10),L32(10,10,10),L33(10,10,10)
  LOGICAL*4   L41(8,8,8,8),L42(8,8,8,8)
  LOGICAL*4   L51(5,5,5,5,5),L52(5,5,5,5,5)
  LOGICAL*4   L61(5,3,3,3,3,2),L62(5,3,3,3,3,2)

  DO  I=1,10
     I11(I)=0
     I12(I)=0
     I13(I)=0
     DO  J=1,10
        I21(I,J)=0
        I22(I,J)=0
        I23(I,J)=0
        DO  K=1,10
           I31(I,J,K)=0
           I32(I,J,K)=0
           I33(I,J,K)=0
        enddo
     enddo
  enddo
  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              I41(I,J,K,L)=0
              I42(I,J,K,L)=0
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN
                    I51(I,J,K,L,M)=0
                    I52(I,J,K,L,M)=0
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       I61(I,J,K,L,M,N)=0
                       I62(I,J,K,L,M,N)=0
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo

  DO  I=1,10
     L11(I)=.FALSE.
     L12(I)=.FALSE.
     L13(I)=.FALSE.
     DO  J=1,10
        L21(I,J)=.FALSE.
        L22(I,J)=.FALSE.
        L23(I,J)=.FALSE.
        DO  K=1,10
           L31(I,J,K)=.FALSE.
           L32(I,J,K)=.FALSE.
           L33(I,J,K)=.FALSE.
        enddo
     enddo
  enddo
  DO  I=1,8
     DO  J=1,8
        DO  K=1,8
           DO  L=1,8
              L41(I,J,K,L)=.FALSE.
              L42(I,J,K,L)=.FALSE.
              DO  M=1,5
                 IF(I.LE.5.AND.J.LE.5.AND.K.LE.5.AND.L.LE.5) THEN
                    L51(I,J,K,L,M)=.FALSE.
                    L52(I,J,K,L,M)=.FALSE.
                 ENDIF
                 DO  N=1,2
                    IF(I.LE.5.AND.J.LE.3.AND.K.LE.3.AND.L.LE.3.AND.M.LE.3)THEN
                       L61(I,J,K,L,M,N)=.FALSE.
                       L62(I,J,K,L,M,N)=.FALSE.
                    ENDIF
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo
  IS3=104
  DO  I1=1,10
     I11(I1)=I1
     IS1=I1
     I12(I1)=I11(I1)*IS1
     I13(I1)=I12(I1)
     DO  I2=2,10
        I21(I1,I2)=I11(I1)*10/I2
        I22(I1,I2)=I2*I1
        IS1=I2/I1 + IS3
        IF(I2.EQ.10) I22(I1,1)=0.
        I21(I1,I2-1)=I21(I1,I2)*IS1
        I23(I1,I2-1)=0.5
        DO  I3=1,10
           I31(I3,I2,I1)=0.
           I32(I3,I1,I2)=3.5
           DO  I4=1,4
              IS2=I3+I4
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 I41(I1,I4,I3,I2)=IS2
                 I42(I1,I4+4,I2,I3)=IS2/3
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    I51(I1,I2,I3,I4,I5)=IS2
                    I52(I1,I2,I3,I4,I5)=IS2/2.
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then
                       I61(I1,I2,I3,I4,I5,I6)=0.5
                       I62(I1,I2,I3,I4,I5,I6)=100.5
                    ENDIF
                 enddo
              enddo
              IS2=I4/2
           enddo
           I33(I1,I2,I3)=IS2
        enddo
     enddo
  enddo

  LS3=.TRUE.
  DO  I1=1,10
     L11(I1)=LS3
     LS1=I1.GE.3
     L12(I1)=L11(I1).AND.LS1
     L13(I1)=L12(I1)
     DO  I2=2,10
        L21(I1,I2)=L11(I1)
        L22(I1,I2)=I2.GT.I1
        LS1=I2/I1.NE.0
        IF(I2.EQ.10) L22(I1,1)=.FALSE.
        L21(I1,I2-1)=L21(I1,I2).AND.LS1
        L23(I1,I2-1)=MOD(I2,2).EQ.0
        DO  I3=1,10
           L31(I3,I2,I1)=LS3
           L32(I3,I1,I2)=LS1
           DO  I4=1,4
              LS2=I3.LE.I4
              IF(I1.LE.8.AND.I2.LE.8.AND.I3.LE.8) THEN
                 L41(I1,I4,I3,I2)=LS2
                 L42(I1,I4+4,I2,I3)=LS2
              ENDIF
              DO  I5=1,5
                 IF (I1.LE.5.AND.I2.LE.5.AND.I3.LE.5.AND.I4.LE.5) THEN
                    L51(I1,I2,I3,I4,I5)=LS2
                    L52(I1,I2,I3,I4,I5)=LS2.AND.I5.GE.3
                 ENDIF
                 DO  I6=1,2
                    IF(I1.LE.5.AND.I2.LE.3.AND.I3.LE.3.AND.I4.LE.3.AND.I5.LE.3) then
                       L61(I1,I2,I3,I4,I5,I6)=.FALSE.
                       L62(I1,I2,I3,I4,I5,I6)=.TRUE.
                    ENDIF
                 enddo
              enddo
              LS2=MOD(I3,2).NE.0
           enddo
           L33(I1,I2,I3)=LS2
        enddo
     enddo
  enddo
  RETURN
END SUBROUTINE INITIL
