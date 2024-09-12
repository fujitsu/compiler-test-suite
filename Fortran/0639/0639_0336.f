       REAL FXY(60,60),FXX(60)
       REAL F1(60,60)
       DATA FXY/1800*1.0D0,1800*2.0D0/
       DATA FXX/60*2.2/
       DATA F1/3600*1.2/
       DATA MX,NX/60,60/
       DATA EKX,EKY,EXX,EYY,FMP,FGK,FOM,FCK/1.,2.,3.,4.,5.,6.,7.,8./
       DATA NCTX,NCTY/25,25/ ,NCXX/2/
       DO 50 M=1,MX
       DO 50 N=1,NX
        MM=M-1
        NN=N-1
        IF(M.EQ.1.AND.N.EQ.1) MM=NCXX
        WKX=MM*EKX
        WKY=NN*EKY
        SQX=MM*EXX
        SQY=NN*EYY
        SQAA=SQX*SQX + SQY*SQY
        SQAH=SQAA/2.
        IF(SQAA.GT.10) GO TO 50
        EXK=EXP(-SQAA)
        EXH=EXP(-SQAH)
        FMP=FGK*EXH
        FOM=FGK*EXK
        F1(M,N)=FOM/WKX

        IF(N.NE.1) GO TO 58
        FXX(M)=FOM/WKX
        GO TO 59
 58    FXY(M,N)=WKX/WKY
 59    IF(M.GT.NCTX.OR.N.GT.NCTY) GO TO 50
       A1 =FMP+FOM
       F1(M,N)=A1 *EXK
 50    CONTINUE
       PRINT *,F1
       END
