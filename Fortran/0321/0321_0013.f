      INTEGER*2     K1,K2,K3,K4,K5,K6
      INTEGER*4     N1,N2,N3,N4,N5,N6
      K1   =   500
      K2   =  -200
      K3   =    50
      K4   =   -20
      K5   =     5
      K6   =     2
      N1   =   600
      N2   =  -400
      N3   =    60
      N4   =   -20
      N5   =     4
      N6   =     2
      IPSW =     0
      ITEM =     0
 1000 ITEM =   ITEM+1
      GO TO   ( 1, 2, 3, 4, 5, 6, 7, 8, 9,10,
     *         11,12,13,14,15,16,17,18,19,20,
     *         21,22,23,24,25,26,27,28,29,30,
     *         31,32,33,34,35,36,37,38,39,40,
     *         41,42,43,44,45,46,47,48,49,50,
     *         51,52,53,54,55,56,57,58,59,60,
     *         61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,2000),ITEM
  100 FORMAT(1H1/1H0,5X,43H* TEST OF EXPRESSION ( REAL*4 = INTEGER*2 ,,
     *                  25H INTEGER*4 ) ERROR LIST *//1H0,5X,7HITEM.NO,
     *               5X,15HCONSTANT VALUE.,7X,13HRESULT VALUE.//)
  101 FORMAT(1H1/1H0,5X,33HERROR IS NOT DETECTED BY TEST0270)
  102 FORMAT(1H0,5X,37H*** ERROR IS DETECTED BY TEST0270 ***)
  103 FORMAT(1H0,7X,I5,2(4X,E16.8))
 1500 RANS2 = RANS1-ABS(RANS1*0.1E-05)
      RANS3 = RANS1+ABS(RANS1*0.1E-05)
      IF (RANS.GE.RANS2.AND.RANS.LE.RANS3)   GO TO 1000
      IF (IPSW.NE.0)                         GO TO 1501
      WRITE(6,100)
      IPSW =   1
 1501 WRITE(6,103) ITEM,RANS1,RANS
      GO TO    1000
 2000 IF (IPSW.NE.0)                         GO TO 2001
      WRITE(6,101)
      STOP
 2001 WRITE(6,102)
      STOP
    1 RANS  =  +K1
      RANS1 =  0.5E 03
      GO TO    1500
    2 RANS  =  (+K2)
      RANS1 =  -0.2E 03
      GO TO    1500
    3 RANS  =  +(K2)
      RANS1 =  -0.2E 03
      GO TO    1500
    4 RANS  =  +(+K3)
      RANS1 =  0.5E 02
      GO TO    1500
    5 RANS  =  -K4
      RANS1 =  0.2E 02
      GO TO    1500
    6 RANS  =  (-K5)
      RANS1 =  -0.5E 01
      GO TO    1500
    7 RANS  =  -(K6)
      RANS1 =  -0.2E 01
      GO TO    1500
    8 RANS  =  -(-K1)
      RANS1 =  0.5E 03
      GO TO    1500
    9 RANS  =  K1+N1
      RANS1 =  0.11E 04
      GO TO    1500
   10 RANS  =  K1-N2
      RANS1 =  0.90E 03
      GO TO    1500
   11 RANS  =  K2*N4
      RANS1 =  0.4E  04
      GO TO    1500
   12 RANS  =  K3/N5
      RANS1 =  12.0
      GO TO    1500
   13 RANS  =  K1**0
      RANS1 =  0.1E 01
      GO TO    1500
   14 RANS  =  K2**1
      RANS1 =  -0.2E 03
      GO TO    1500
   15 RANS  =  K3**2
      RANS1 =  0.25E 04
      GO TO    1500
   16 RANS  =  K5**3
      RANS1 =  0.125E 03
      GO TO    1500
   17 RANS  =  K6**4
      RANS1 =  0.16E 02
      GO TO    1500
   18 RANS  =  K6**5
      RANS1 =  0.32E 02
      GO TO    1500
   19 RANS  =  (K1+N1)
      RANS1 =  0.11E 04
      GO TO    1500
   20 RANS  =  (K1-(-N2))
      RANS1 =  0.1E 03
      GO TO    1500
   21 RANS  =  -((-K2)*N4)
      RANS1 =  0.4E 04
      GO TO    1500
   22 RANS  = -((-K3)/(-N5))
      RANS1 =  -12.0
      GO TO    1500
   23 RANS  =  (K1+N2)**0
      RANS1 =  0.1E 01
      GO TO    1500
   24 RANS  =  -(K2-N2)**1
      RANS1 =  -0.2E 03
      GO TO    1500
   25 RANS  =  (K6*K6)**2
      RANS1 =  0.16E 02
      GO TO    1500
   26 RANS  =  (K5+(-N5))**3
      RANS1 =  0.1E 01
      GO TO    1500
   27 RANS  = -((-K6)*(-N6))**4
      RANS1 =  -0.256E 03
      GO TO    1500
   28 RANS  =  ((-K6)/N6)**5
      RANS1 =  -0.1E 01
      GO TO    1500
   29 RANS  =  K1+(N1+N2)
      RANS1 =  0.7E 03
      GO TO    1500
   30 RANS  =  K2-(N3+(-N4))
      RANS1 =  -0.28E 03
      GO TO    1500
   31 RANS  =  K3*((-N5)+N6)
      RANS1 =  -0.1E 03
      GO TO   1500
   32 RANS  =  K1/(N5+N6)
      RANS1 =  83.0
      GO TO   1500
   33 RANS  =  (K1+K2)+N1
      RANS1 =  0.90E 03
      GO TO   1500
   34 RANS  =  (K2+K3)-N2
      RANS1 = 0.25E 03
      GO TO   1500
   35 RANS  =  ((-K3)+K4)*N3
      RANS1 = -0.42E 04
      GO TO   1500
   36 RANS  =  (K1+(-K3))/N6
      RANS1 =  0.225E 03
      GO TO   1500
   37 RANS  =  (K1+K2)+(N1+N2)
      RANS1 =  0.5E 03
      GO TO    1500
   38 RANS  =  (K2-K3)-(N4-N5)
      RANS1 =  -0.226E 03
      GO TO    1500
   39 RANS  =  (K3*K6)*(N5-N6)
      RANS1 =   0.2E 03
      GO TO    1500
   40 RANS  =  (K1+(-K2))/(-N6+N5)
      RANS1 =  0.35E 03
      GO TO    1500
   41 RANS  =  12345**0
      RANS1 =  0.1E 01
      GO TO    1500
   42 RANS  =  -3456**1
      RANS1 =  -0.3456E 04
      GO TO    1500
   43 RANS  =  (-2)**2
      RANS1 =  0.4E 01
      GO TO    1500
   44 RANS  = -(3+2)**3
      RANS1 =  -0.125E 03
      GO TO    1500
   45 RANS  =  (3+(-2))**4
      RANS1 =  0.1E 01
      GO TO    1500
   46 RANS  =  (4+(-3)+1)**5
      RANS1 =  0.32E 02
      GO TO    1500
   47 RANS  =  500+N1
      RANS1 =  0.11E 04
      GO TO    1500
   48 RANS  =  -(-500+(-N2))
      RANS1 =  0.1E 03
      GO TO    1500
   49 RANS  =  -((-K2)*(-20))
      RANS1 =  0.4E 04
      GO TO    1500
   50 RANS  = -(K3/(-4))
      RANS1 =  0.12E 02
      GO TO    1500
   51 RANS  =  (K1-490)**0
      RANS1 =  0.1E 01
      GO TO    1500
   52 RANS  =  (300+K2)**1
      RANS1 =  0.1E 03
      GO TO    1500
   53 RANS  =  ((-K3)+52)**2
      RANS1 =  0.4E 01
      GO TO    1500
   54 RANS  =  (K5+(-3))**3
      RANS1 =  0.8E 01
      GO TO    1500
   55 RANS  = -((-K6)-(-4))**4
      RANS1 = -0.16E 02
      GO TO    1500
   56 RANS  =  ((-K5)-(-3))**5
      RANS1 =  -0.32E 02
      GO TO    1500
   57 RANS  =  K1+(N1+(-400))
      RANS1 =  0.7E 03
      GO TO    1500
   58 RANS  =  K2-(60+(-N4))
      RANS1 =  -0.28E 03
      GO TO    1500
   59 RANS  =  -(-50*((-N5)+2))
      RANS1 =  -0.1E 03
      GO TO    1500
   60 RANS  =  500/(N5+2)
      RANS1 =  83.0
      GO TO    1500
   61 RANS  =  (K1+(-200))+N1
      RANS1 =  0.90E 03
      GO TO    1500
   62 RANS  =  ((-200)+K3)-N2
      RANS1 =  250.0
      GO TO    1500
   63 RANS  =  ((-K3)+K4)*60
      RANS1 =  -0.42E 04
      GO TO    1500
   64 RANS  =  (-(-500)+(-K3))/(-(-2))
      RANS1 =  0.225E 03
      GO TO    1500
   65 RANS  =  (K1+(-200))+(600+N2)
      RANS1 =  0.5E 03
      GO TO    1500
   66 RANS  =  (K2-50)-(N4-4)
      RANS1 =  -0.226E 03
      GO TO    1500
   67 RANS  =  (50*K6)*(4-N6)
      RANS1 =  0.2E 03
      GO TO    1500
   68 RANS  =  (500+(-K2))/(-N6+4)
      RANS1 =  0.35E 03
      GO TO    1500
   69 RANS  =  (K6+N6)**(K6-1)
      RANS1 =  0.4E 01
      GO TO    1500
   70 RANS  =  -(K5-N6)**(N6-1)
      RANS1 =  -0.3E 01
      GO TO    1500
   71 RANS  =  K1+(N1+K2)
      RANS1 =  0.9E 03
      GO TO    1500
   72 RANS  =  K2-(K3+(-N4))
      RANS1 = -0.27E 03
      GO TO    1500
   73 RANS  =  ((-K3)+N4)*N3
      RANS1 =  -0.42E 04
      GO TO    1500
   74 RANS  =  (N1+(-K3))/(-N6)
      RANS1 =  -0.275E 03
      GO TO    1500
   75 RANS  =  ((K5-(N5+1))**(N6-(-1+K6)))
      RANS1 =  0.0
      GO TO    1500
      END
