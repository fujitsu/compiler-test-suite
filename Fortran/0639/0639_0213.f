      REAL A(11),B(10),C(10)
      DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,11./
      DATA B/10.,9.,8.,7.,6.,5.,4.,3.,2.,1./
      DATA C/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
      LOGICAL L1/.TRUE./,L2/.FALSE./,LX(10)/10*.TRUE./
      LOGICAL LA(10)/5*.FALSE.,5*.TRUE./,LL(10)/10*.TRUE./,LSW


      DO 10 I=2,10
        IF(LL(I)) LX(I) = B(I) .LT. C(I)
        IF(L1) THEN
          LSW = .NOT.LX(I)
          A(I) = A(I) - B(I)
          IF(.NOT.L2) THEN
            B(I) = A(I) + 1.0D0
          ENDIF
        ENDIF
        LSW = L1 .AND. LX(I)
        IF(LL(I)) LA(I) = B(I) .LT. C(I)
   10 CONTINUE
      PRINT *,A,B,LA,LX

      STOP
      END
