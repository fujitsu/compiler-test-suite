       COMMON /VSU1/ITEM1(10)
       INTEGER*4   WITEM1(10)
       INTEGER*4 IX1,II1        ,IM1
       DATA WITEM1/1 ,2 ,3 ,4 ,5 ,6 ,7 ,8 ,9 ,10 /
       DATA IV1/5/
       DO 111 I=1,10
         ITEM1(I)=WITEM1(I)
111    CONTINUE

       DO 10 I=1,10
         IF(ITEM1(I).GT.IV1) THEN
           IV1=ITEM1(I)
           II1=I
         ENDIF
10     CONTINUE

       DO 20 J=1,10
           IM1=ITEM1(J)
           IX1=I
20     CONTINUE
        WRITE(6,*) IM1,IX1,IV1,II1
       STOP
       END
