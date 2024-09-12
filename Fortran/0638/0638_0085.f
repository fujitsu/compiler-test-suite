         REAL *4  A(100), B(100), C(100), D(100)
         REAL *4  E(10,10), F(10,10), G(10,10), H(10,10)
         REAL *4  X(50,2), Y(2,50), Z(25,4), V(4,25), S(5,20)
         DATA A/100*1.0/,B/100*1.0/,C/100*1/,D/100*2/
         DATA X/100*0.0/,Y/100*10.0/,Z/100*1/,V/100*1/,S/100*1/
         DATA E/100*0/,F/100*9/,G/100*8/,H/100*1/
         LOGICAL    LT00A
         INTEGER *4 IX00A,IX00B,IX00C
         INTEGER *4 IX00D,IX00E,IX00F
         INTEGER *4 IX00G,IX00H,IX00I
         INTEGER *4 IX00J,IX00K
         IF(X(1,1).EQ.0.0) GOTO 77777
         DO 9991 I=1,100
           A(I)=1.0
           B(I)=1.0
           C(I)=1.0
9991       D(I)=2.0
          N=4
         DO 10 I=1,10,1
         LT00A=I.LE.2
         IF (.NOT.LT00A)GO TO 4100
         DO 4500 IX00A=1,50,1
         X(IX00A,I)=2.0
 4500    CONTINUE
 4100    CONTINUE
         LT00A=I.LE.2
         IF (.NOT.LT00A)GO TO 4301
         DO 4600 IX00A=1,50,1
         Y(I,IX00A)=2.0
 4600    CONTINUE
 4200    CONTINUE
         LT00A=I.LE.3
         IF (.NOT.LT00A)GO TO 4300
         GOTO 4300
4301     DO 4700 IX00A=1,25,1
         Z(IX00A,I)=2.0
 4700    CONTINUE
         GOTO 4301
 4300    CONTINUE
         LT00A=I.LE.2
         IF (.NOT.LT00A)GO TO 4400
         DO 4800 IX00A=1,4,1
         V(IX00A,I)=2.0
 4800    CONTINUE
 4400    CONTINUE
 180     DO 1 J=1,25,1
         GOTO 2
 181     DO 4900 IX00A=1,4,1
         Z(J,IX00A)=2.0
 4900    CONTINUE
         DO 4010 IX00A=1,4,1
         V(IX00A,J)=2.0
 4010    CONTINUE
          GOTO 1
2         CONTINUE
          GOTO 180
1         CONTINUE
         DO 4110 IX00A=1,100,1
         A(IX00A)=2.0
 4110    CONTINUE
 1256    DO 4210 IX00C =1,20
         DO 4210 IX00B =1,5
         S(IX00B,IX00C)=2.0
 4210    CONTINUE
         GOTO 888
         DO 4310 IX00A=1,100,1
         B(IX00A)=2.
 4310    CONTINUE
         GOTO 1256
         DO 4410 IX00A=1,100,1
         C(IX00A)=2.
 4410    CONTINUE
 888     DO 4510 IX00A=1,100,1
         D(IX00A)=2.
 4510    CONTINUE
         DO 4610 IX00A=1,10,1
         E(I,IX00A)=I
 4610    CONTINUE
         DO 4710 IX00A=1,10,1
         F(I,IX00A)=I
 4710    CONTINUE
         DO 4810 IX00A=1,10,1
         G(I,IX00A)=I
 4810    CONTINUE
         DO 4910 IX00A=1,10,1
         H(I,IX00A)=I
 4910    CONTINUE
         DO 4020 IX00A=1,10,1
         E(IX00A,I)=I
 4020    CONTINUE
         DO 4120 IX00A=1,10,1
         F(IX00A,I)=I
 4120    CONTINUE
         DO 4220 IX00A=1,10,1
         G(IX00A,I)=I
 4220    CONTINUE
         DO 4320 IX00A=1,10,1
         H(IX00A,I)=I
 4320    CONTINUE
         DO 4420 IX00A=2,10,2
         A(IX00A)=4.
 4420    CONTINUE
 111     IX00A =  (10-1)/N + 1
         DO 4520 IX00B=1,10,N
         B(IX00B)=4.
 4520    CONTINUE
 10       CONTINUE
 1133    DO 20 I=1,20,1
         DO 4620 IX00C =1,25
5567     DO 4620 IX00B =1,4
         IX00A = IX00C-1
         IX00A = IX00A*4+IX00B
         IX00E=IX00A
         IX00D     =  (  IX00E   - 1 ) / 5
1119     IX00F     =     IX00E     -     IX00D     *     5
         IX00G     =     IX00D     +  1
 432     IX00I=IX00A
         IX00H     =  (  IX00I   - 1 ) / 10
         IX00J     =     IX00I     -     IX00H     *     10
         IX00K     =     IX00H     +  1
         H(IX00J,IX00K)=A(IX00A)+V(IX00B,IX00C)-S(IX00F,IX00G)
 4620    CONTINUE
         DO     4720            IX00C    =  1  ,10
         DO     4720            IX00B    =  1  ,10
         IX00A     =     IX00C     -  1
         IX00A     =     IX00A     *     10        +     IX00B
         IX00E=IX00A
         IX00D     =  (  IX00E   - 1 ) / 50
         IX00F     =     IX00E     -     IX00D     *     50
         IX00G     =     IX00D     +  1
         IX00I=IX00A
         IX00H     =  (  IX00I   - 1 ) / 5
         IX00J     =     IX00I     -     IX00H     *     5
         IX00K     =     IX00H     +  1
         B(IX00A)=E(IX00B,IX00C)+X(IX00F,IX00G)+S(IX00J,IX00K)
 4720    CONTINUE
         DO     4820            IX00C    =  1  ,10
         DO     4820            IX00B    =  1  ,10
         IX00A     =     IX00C     -  1
         IX00A     =     IX00A     *     10        +     IX00B
         IX00E=IX00A
         IX00D     =  (  IX00E   - 1 ) / 5
         IX00F     =     IX00E     -     IX00D     *     5
         IX00G     =     IX00D     +  1
         IX00I=IX00A
         IX00H     =  (  IX00I   - 1 ) / 2
         IX00J     =     IX00I     -     IX00H     *     2
         IX00K     =     IX00H     +  1
         Y(IX00J,IX00K)=C(IX00A)+F(IX00B,IX00C)+S(IX00F,IX00G)
 4820    CONTINUE
         DO 4920 IX00A=1,5
         IX00B=IX00A-1+6
         A(IX00A)=B(IX00B)+2.0+S(IX00A,I)
 4920    CONTINUE
20        CONTINUE
77777   CONTINUE
        WRITE(6,*) A,B,C,D,E,F,G,H,Z,X,V,Y,S
        STOP
        END
