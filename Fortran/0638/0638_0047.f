       LOGICAL*4 L41(10),L42(10),L43(10),L44(10),L45(10),L46(10)
       LOGICAL*4 L4A,L4B,L4C,L4D,L4E,L4F
       INTEGER*4 IMAX1(10)/1,2,3,4,5,6,7,8,9,10/,IM1,IN1
       INTEGER*4 IMAX2(10)/1,12,3,4,5,6,7,8,9,10/,IM2,IN2,IMM2,INN2

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

       DO 21 J=1,2
       IM1=0
       DO 20 I=1,10
         IF(IMAX1(I).GT.IM1) THEN
            IM1=IMAX1(I)
            IN1=I
         ENDIF
         L4F=L4A.AND.L4B.OR.L42(J).OR.L41(I)
         L42(I)=L4F.NEQV.L43(I)
20     CONTINUE
       WRITE(6,*) 'ITEM1',J,IM1,IN1,IMAX1
21     CONTINUE
       DO 31 J=1,10
       IM2=0
       IMM2=1000
       DO 30 I=1,10
         IF(IMAX2(I).GT.IM2) THEN
            IM2=IMAX2(I)
            IN2=I
         ENDIF
         IF(IMAX2(I).LT.IMM2) THEN
            IMM2=IMAX2(I)
            INN2=I
         ENDIF
      L41(I)=.NOT.L42(I).OR.L4A.OR.L4B.OR.(L4C.AND.L43(I)).AND.L44(I)
30     CONTINUE
       WRITE(6,*) 'ITEM2',J,IM2,IN2,IMAX2
31     CONTINUE
       DO 40 I=1,10
       DO 40 J=11,20
         L42(J-10)=L4A.AND..NOT.L4B
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
