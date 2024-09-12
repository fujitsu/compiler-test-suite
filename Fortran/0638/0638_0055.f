       INTEGER * 4 A1(10)/10*1/,A2(10)/10*2/,A3/3/
       INTEGER * 4 LIST(10)/1,2,3,4,5,6,7,8,9,10/
       INTEGER * 4 B1(10)/10*10/,B2(10)/10*2/,B3/3/
       REAL    * 4 C1(10)/10*2.0/,C2(10)/10*0.5/,C3/0.8/
       REAL    * 8 D1(10)/10*10.0/,D2(10)/10*2.0/,D3/5.0/
       COMPLEX * 8 E1(10)/10*(10.,10.)/,E2(10)/10*(1.,1.)/,E3/(2.,2.)/
       COMPLEX *16 F1(10)/10*(20.,20.)/,F2(10)/10*(2.,2.)/,F3/(4.,4.)/
         A2(1)=0
       DO 10 I=1,10,2
         A2(1)=A2(1)+A1(LIST(I))+A3
10     CONTINUE
       B3=0
       DO 30 J=10,20
         DO 30 I=1,10
           B3=B3+B1(I)+B2(LIST(I))+J
30     CONTINUE
         C3=0.
         DO 40 I=1,10,3
           C3=C3+C2(1)+C1(LIST(I))
40       CONTINUE
         DO 50 J=1,5
           D3=5.
           DO 50 I=1,10
              D3=D3+0.5+D1(LIST(I))+D2(LIST(I))**J
50      CONTINUE
        E3=(0.,0.)
        DO  60 J=6,10
        DO  60 I=1,10
           E3=E3+1+E1(LIST(I))+E2(LIST(I))/2
 60     CONTINUE
        F3=(0.,0.)
        DO  70 I=1,10
           F3=F3+F1(LIST(I))+F2(LIST(I))
 70     CONTINUE
        WRITE(6,*) A1,A2,A3,B1,B2,B3,C1,C2,C3,D1,D2,D3,E2,F2
        WRITE(6,*) LIST,E1,E3,F1,F3,LIST
       STOP
       END
