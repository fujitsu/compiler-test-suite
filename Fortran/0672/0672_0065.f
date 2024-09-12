      DIMENSION     IA1(5),IB1(5,5),IC1(5)
      NAMELIST      /NAMEL/ I,J,K,
     +                      IA1,IA2,IA3,IB1,IB2,IC1,
     +                      N01,N02,ISW

         WRITE(6,1000)
 1000 FORMAT(1H1,'SPECIAL CASE (06)')

    1 CONTINUE
         N01     =  0
         N02     =  0
         ISW     =  0

    2    DO    20   I = 1, 5
         IA1(I)  =  I

    3    DO    7    J = 1, 5
         IB1(I,J)  =  I  *  10  +  J
         IF (ISW.EQ.0)  GO  TO  4

    7    ISW     =  ISW  +  10

         N01     =  N02  +  1
         IB2     =  I  *  2
   20 CONTINUE

         WRITE(6,NAMEL)

      STOP

    4    N02     =  10

         DO    5    K = 1, 5
         IC1(K)  =  2  *  K
    5 CONTINUE

    6    IA2     =  1
         IA3     =  IA2  +  3
         GO  TO  7
      END
