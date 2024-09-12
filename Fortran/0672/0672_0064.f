         NAMELIST  /NAMEL/ A    , B    , C    ,
     *                     D    , E    , F    , G    ,
     *                     ISW1 , ISW2 , ISW3 , ISW4
         DIMENSION         A(6) , B(6) , C(5)
         WRITE(6,1000)
 1000 FORMAT(1H1,'SPECIAL CASE (05)')

         ISW1  =  0
         ISW2  =  2
         ISW3  =  0
         ISW4  =  0
   10    A(1)  =  1.0
      DO 30   I = 1 , 5
         A(I+1)  =  A(I)  +  5.0
         E  =  A(I)
   20    F  =  E  *  2.0
         ISW1  =  ISW1  +  1
         IF ( ISW1  .EQ.  1 ) GO TO 80
         ISW3  =  ISW3  +  1
   30 CONTINUE
         ISW2  =  ISW2  -  1
         B(1)  =  1.0
         IF ( ISW2  .EQ.  0 ) GO TO 40
         DO 60  J = 1 , 5
         ISW4  =  ISW4  +  1
         B(J+1)  =  B(J)  -  1.0
         IF ( ISW4  .EQ.  1 )  GO TO 10
   40    G  =  A(1)
         D  =  B(J)
   50    E  =  D  *  2.0  -  1.0
         F  =  D  +  E  +  F
         IF ( ISW2  .EQ.  0 )  GO TO 70
         F  =  D  +  E  +  2.0
   60 CONTINUE
   70    B(1)  =  B(1)  +  1.0
   80    C(1)  =  2.0
      DO 90   K = 1 , 5
         C(K)  =  K  *  C(1)
   90 CONTINUE
         E  =  10.0
         IF ( ISW3  .EQ.  0 )  GO TO 20
         D  =  1.0
         ISW2  =  ISW2  +  1
         IF ( ISW2  .EQ.  1 )  GO TO 50
         WRITE(6,NAMEL)
         STOP
         END
