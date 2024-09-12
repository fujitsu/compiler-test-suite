       COMMON /BLK01/ L41
       COMMON /BLK02/ L42
       COMMON /BLK03/ L43
       COMMON /BLK04/ L44
       COMMON /BLK05/ L45
       COMMON /BLK06/ L46
       COMMON /BLK07/ L4A
       COMMON /BLK08/ L4B
       COMMON /BLK09/ L4C
       COMMON /BLK10/ L4D
       COMMON /BLK11/ L4E,L4F
       LOGICAL*4 L41(10),L42(10),L43(10),L44(10),L45(10),L46(10)
       LOGICAL*4 L4A,L4B,L4C,L4D,L4E,L4F

       DO 10 I=1,10
         L41(I)=.TRUE.
         L4A   =.TRUE.
         L42(I)=.FALSE.
         L4B   =.FALSE.
         L43(I)=.TRUE.
         L4C   =.TRUE.
         L44(I)=.FALSE.
         L4D   =.FALSE.
         L45(I)=.TRUE.
         L4E   =.TRUE.
         L46(I)=.FALSE.
         L4F   =.FALSE.
10     CONTINUE

       DO 20 J=1,2
       DO 20 I=1,10
         L4F=L4A.AND.L4B
         L42(I)=L4F.NEQV.L43(I)
20     CONTINUE
       DO 30 J=1,10
       DO 30 I=1,10
      L41(I)=.NOT.L42(I).OR.L4A.OR.L4B.OR.(L4C.AND.L43(I)).AND.L44(I)
30     CONTINUE
       DO 40 I=1,10
       DO 40 J=11,20
       IF(J.GT.15) THEN
         L42(J-10)=L4A.AND..NOT.L4B
       ELSE
         L42(J-10)=L4A.AND.L41(J-10)
       ENDIF
40     CONTINUE
         DO 50 I=1,10
           L43(I)=(L44(I/2+1).OR.L43(I)).NEQV.L42(I)
50       CONTINUE
       DO 60 J=1,10
       DO 60 I=1,10
      L41(I)=.NOT.L42(I).OR.L4A.OR.L4B.NEQV.(L4C.AND.L43(I)).AND.L44(I)
      L45(I)=L42(I).OR.L4B.OR.L4C.AND.(L4C.AND..NOT.L42(J)).AND.L41(I)
60     CONTINUE
        WRITE(6,*) L4A,L4B,L4C,L4D,L4E,L4F
        WRITE(6,*) L41,L42,L43,L44,L45,L46
       STOP
       END
