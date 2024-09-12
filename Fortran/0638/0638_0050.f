       INTEGER * 4 B(10)/1,5,1,2,1,80,1,0,1,0/
       LOGICAL * 4 L(10)/5*.TRUE.,5*.FALSE./
       LOGICAL * 4 LL/.FALSE./
       LOGICAL * 4 A(10)/3*.FALSE.,3*.TRUE.,3*.FALSE.,.TRUE./
       INTEGER * 2 C(10)/3,1,0,1,6,1,0,1,2,1/
       DO 10 I=1,9
         L(I)=L(I).OR.LL
         L(I+1)=A(I).AND.L(I)
10     CONTINUE
       DO 21 J=1,5
       DO 20 I=1 ,9,2
         L(I)=(L(I).NEQV.LL).OR.(B(I).EQ.J)
20     CONTINUE
21     CONTINUE
       DO 30 J=1,10
         DO 30 I=5,10,2
           L(I)=.NOT.L(I).AND.C(I).GT.J
30     CONTINUE
        WRITE(6,*) LL,L,A,B,C
       STOP
       END
