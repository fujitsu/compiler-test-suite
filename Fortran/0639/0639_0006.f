       LOGICAL L1(50),L2(50),L3(60),L4(50)
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
       DATA L3/.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.
     1        ,.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.
     2        ,.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.
     3        ,.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.
     4        ,.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.
     5        ,.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.
     6        ,.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.
     8        ,.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.
     9        ,.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE.
     E        ,.TRUE. ,.TRUE. ,.FALSE.,.TRUE. ,.TRUE. ,.FALSE. /
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

       INTEGER IA(50),IB(50),IC(50),ID(50),IE(50),IM(50)
       INTEGER IX1(50),IX2(50),IX3(50)
       LOGICAL LX(50)
       REAL*8  DD(50),AA(50),ZZ(50)
       DATA IA/10*1,10*2,10*3,10*4,10*5/

       DO 101 I = 1 , 50
         IX1(I) = I
         IX2(I) = 51-I
         IX3(I) = I
         IF( .NOT. L3(IX2(I)) .AND. L1(IX1(I)) ) THEN
           IM( I) = (I + 2 ) * 8
           IA( I) = IA(I) + I
           IB( I) = IM(I) * 8
           IC( I) = IB(I) - I*2
           ID( I) = IB(I) - IC(I) + IA(I)
           IE( I) = - I
           DD( I) = I * 2
          ELSE
           IM( I) = (I + 2 ) * 8
           IA( I) = IA(I) + I
           IB( I) = IM(I) * 8
           IC( I) = IB(I) - I*3
           ID( I) = IB(I) - IC(I) + IA(I)
           IE( I) = - I
           DD( I) = I * 2
         ENDIF
         AA(I) = IA(I)
         IF( (IX3(I) .LE. IX2(I) ) .AND. L2(I) ) THEN
           LX(I) = L1(I) .AND. L2(I) .OR. L4(I)
           ZZ(I) = AA(I) / I + IE(I)
          ELSE
           LX(I) = L1(I) .OR. L2(I) .AND. L4(I)
           ZZ(I) = AA(I) / I - IE(I)
         ENDIF
 101   CONTINUE
       PRINT *,ID,IE,ZZ,LX
       END
