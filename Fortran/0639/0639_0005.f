       LOGICAL L1(50),L2(50),L3(50),L4(50)
       DATA L1/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     1        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     2        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     3        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     4        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     5        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     6        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     7        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     8        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     E        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
       DATA L2/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     1        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     2        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     3        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     4        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     5        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     6        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     7        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     8        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     E        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
       DATA L3/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     1        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     2        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     3        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     4        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     5        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     6        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     7        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     8        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     E        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
       DATA L4/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     1        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     2        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     3        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     4        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     5        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     6        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     7        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.
     8        ,.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.
     E        ,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
       LOGICAL L10(50),L11(50),L12(50),L13(50)
       LOGICAL L14(50)
       LOGICAL L15(50),L16(50),L17(50),L18(50)
       INTEGER IA(50),IB(50),IC(50),ID(50)

       DO 101 I = 1 , 50
         IF( I .LE. 50 ) THEN
           IA( I) = I - 21
           IB( I) = - I + 11
           IC( I) = IA(I) - IB(I)
           ID( I) = IB(I) - IA(I)
           L10( I) = L1(I) .OR. L2(I)
           L11( I) = (.NOT.L1(I)).AND.(.NOT.L2(I))
           L12( I) = L1(I) .EQV. L2(I)
           L13( I) = L1(I) .NEQV. L2(I)
           L14( I) = .NOT.(.NOT.L3(I).NEQV.L4(I))
           L15( I) = (IA(I) .GT. IB(I)).AND.(IC(I).LT.ID(I))
           L16( I) = .NOT.(ID(I).EQ.IC(I))
           L17( I) = (IA(I) .NE. IB(I)).OR.(IC(I).EQ.ID(I))
           L18( I) = (IA(I) .GE. ID(I)).OR.(IB(I).LE.IC(I))
         ENDIF
 101   CONTINUE
       PRINT *,L10,L11,L12,L13,L14,L15
       PRINT *,L16,L17,L18
       END
