       COMPLEX*16 CD1(10,10)/100*(3.,5.)/,ED1,ED6
       DO 50 J=1,10
         ED1=CD1(1,J)+(2.0,1.0)
         IF(6.GT.J) WRITE(6,*) J
         DO 50 I=1,10
           ED6=ED1
 50     CONTINUE
       WRITE(6,*) ED6
       END
