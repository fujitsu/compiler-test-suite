Module radin_mod
  Implicit None
Contains
  SUBROUTINE SPLINT (X,Y,YPP,N,XI,YI,NI,KERR)
         Integer, Intent(in) :: N,NI
         Real(8), Intent(in) :: X(N),Y(N),YPP(N),XI(NI)
         Integer, Intent(out) :: KERR
         Real(8), Intent(out) :: YI(NI)
    Integer :: nm1,i,K,IL,IR
    Real(8) :: H,H2,XR,XR3,XL,XL3,XX
    IF (NI) 1,1,2
1   CONTINUE
    KERR = 3
    RETURN
2   KERR = 1
    NM1= N-1
    K  = 1
    XX = XI(1)
    IF (XX.LT.X(1)) GO TO 90
    IF (XX.GT.X(N)) GO TO 80
    IL = 1
    IR = N
10  I  = (IL+IR)/2
    IF (I.EQ.IL) GO TO 100
    IF (XX-X(I)) 20,100,30
20  IR = I
    GO TO 10
30  IL = I
    GO TO 10
50  IF (XX-X(I+1)) 100,100,60
60  IF (I.GE.NM1) GO TO 80
    I  = I+1
    GO TO 50
80  KERR = 2
    I  = NM1
    GO TO 100
90  KERR = 2
    I  = 1
100 H  = X(I+1) - X(I)
    YI(K) = Y(I)*XR + Y(I+1)*XL-H2*(YPP(I)*(XR-XR3) + YPP(I+1)*(XL-XL3))/6.0D0
    IF (K.GE.NI) RETURN
    K = K+1
    XX = XI(K)
    IF (XX-XI(K-1)) 110,100,50
110 IL = 1
    IR = I+1
    GO TO 10
  END subroutine SPLINT

End Module radin_mod
print *,'pass'
end
