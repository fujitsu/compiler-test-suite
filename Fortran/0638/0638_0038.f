       INTEGER*4 A1(10)/1,2,3,4,5,6,7,8,9,10/
       INTEGER*4 A2(10)/1,2,3,4,5,6,7,8,9,10/
       INTEGER*4 A3(10)/1,2,3,14,5,6,7,8,9,10/
       INTEGER*4 A4(10)/1,2,3,14,5,6,7,8,9,10/
       INTEGER*4 A5(10)/1,2,3,-10,5,6,7,8,9,10/
       INTEGER*4 A6(10)/10,2,3,4,5,6,7,8,9,10/
       INTEGER*4 B(10,10)/3,2,1,4,5,6,7,8,9,010,20*0,2,3,4,5,6,7,8,9,9
     *                   ,2,60*3/
       COMMON /A122/ IS,IN2,IN3,IN4,IN5,IN6,INX4

       IN1=0
       DO 10 I=1,10
         IM=A1(I)
         IF(IM.GT.IN1) THEN
           IN1=IM
           INX1=I
         ENDIF
10     CONTINUE

       IS=0
       IN2=0
       IN3=0
       IN4=0
       IN5=0
       IN6=100
       INX4=0
       DO 20 J=1,10
       DO 20 I=1,10
         IF(A2(I).GT.IN2) THEN
           IN2=A2(I)
           INX2=I
         ENDIF
           IF(A3(I).GT.IN3) THEN
             IN3=A3(I)
             INX3=I
           ENDIF
             IF(A4(I).GT.IN4) THEN
               IN4=A4(I)
               INX4=I+1
               IS=IS+J
             ENDIF
               IF(A5(I).GT.IN5) THEN
                 IN5=A5(I)
                 INX5=I
               ENDIF
                 IF(A6(I).LT.IN6) THEN
                   IN6=A6(I)
                   INX6=I
                 ENDIF
20     CONTINUE
        WRITE(6,*) IN1,IN2,IN3,IN4,IN5,IN6
        WRITE(6,*) INX1,INX2,INX3,INX4,INX5,INX6
        WRITE(6,*) IS,B
       STOP
       END
