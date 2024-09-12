       LOGICAL * 4 A1(10)/10*.TRUE./,A2(10)/10*.FALSE./,A3/.FALSE./
       INTEGER * 4 N/10/,B1(10)/10*10/,B2(10)/10*2/,B3/3/
       REAL    * 4 C1(10)/10*2.0/,C2(10)/10*0.5/,C3/0.8/
       REAL    * 8 D1(10)/10*10.0/,D2(10)/10*2.0/,D3/5.0/
       COMPLEX * 8 E1(10)/10*(10.,10.)/,E2(10)/10*(1.,1.)/,E3/(2.,2.)/
       COMPLEX *16 F1(10)/10*(20.,20.)/,F2(10)/10*(2.,2.)/,F3/(4.,4.)/
       DO 10 I=1,10,2
         A2(I)=A1(I).EQV.A3
10     CONTINUE
       DO 30 J=10,20
         DO 30 I=1,N,10
           B2(I)=B1(I)+B3
30     CONTINUE
         DO 40 I=1,10,3
           C2(I)=C1(I)*C3
40       CONTINUE
         DO 50 J=1,5
           DO 50 I=1,10
              D2(I)=D1(I)/D3
50      CONTINUE
        DO  60 J=6,10
        DO  60 I=1,10
           E2(I)=(E1(I)+E3)+E1(I)*E3-E3
 60     CONTINUE
        DO  70 I=1,10
           F2(I)=(F1(I)+F3)+F1(I)*F3-F3
 70     CONTINUE
        WRITE(6,9999) A1,A2,A3,B1,B2,B3,C1,C2,C3,D1,D2,D3,E2,F2
9999   format(10g20.6)
       STOP
       END
