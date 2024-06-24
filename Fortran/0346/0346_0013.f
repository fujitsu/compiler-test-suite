       DIMENSION A(2600),B(2600),C(2600)
       data a,b,c/7800*0/
       COMMON N

       B(1) = 1.
       C(1) = 2.
       B(128) = 2.
       C(128) = 3.
       B(256) = 3.
       C(256) = 4.
       B(512) = 4.
       C(512) = 5.
       B(1024) = 5.
       C(1024) = 6.
       B(2048) = 6.
       C(2048) = 7.
       DO 10 I = 1 , 2048
         A(I) = B(I) + C(I)
 10    CONTINUE
       WRITE(6,*) A(1),A(128),A(256),A(512),A(1024),A(2048)
       STOP
       END