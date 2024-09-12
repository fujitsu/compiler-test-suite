       INTEGER*4 ITEM1(10)/2,3,4,56,1,2,3,4,5,6/
       INTEGER*4 ITEM2(10)/256,3,4,256,1,2,3,4,5,6/
       INTEGER*4 ITEM3(10)/2,3,4,56,111,2,3,4,5,6/
       INTEGER*4 IX1,IX2,IX3,IN1,IM1,IN2,IM2,IN3,IM3
       INTEGER*4 II1,II2,II3,IV1,IV2,IV3
       DATA II1/0/,II2/0/,II3/0/,IV1/0/,IV2/0/,IV3/0/

         ISUM=0
         IX1=0
         IX2=0
         IX3=0
         ID1=1110
         ID2=1110
         ID3=1110
         IN1=1110
         IN2=1110
         IN3=1110
         IM1=0
         IM2=0
         IM3=0

       DO 10 I=1,10
         IF(ITEM1(I).GT.IV1) THEN
           IV1=ITEM1(I)
           II1=I
         ENDIF
10     CONTINUE
       DO 20 J=1,10
         IF(ITEM1(J).GT.IM1) THEN
           IM1=ITEM1(J)
           IX1=I
         ENDIF
       DO 20 I=1,10
         IF(ITEM1(I).LT.IN1) THEN
           IN1=ITEM1(I)
           ID1=I
           ISUM=ISUM+J
         ENDIF
20     CONTINUE

       DO 25 I=1,10
         IF(ITEM2(I).GT.IV2) THEN
           IV2=ITEM2(I)
         ENDIF
25     CONTINUE

       DO 30 J=1,2
         IF(ITEM2(J).GT.IM2) THEN
           IM2=ITEM2(J)
         ENDIF
       DO 30 I=1,10
       IF(ITEM2(I).LT.IN2) THEN
           IN2=ITEM2(I)
           ISUM=ISUM+J
         ENDIF
30     CONTINUE

       DO 45 I=1,10
         IF(ITEM3(I).GT.IV3) THEN
           II3=I
         ENDIF
45     CONTINUE
       DO 40 I=1,10
         IF(ITEM3(I).GT.IM3) THEN
           IX3=I
         ENDIF
         IF(ITEM1(I).LT.IN3) THEN
           ID3=I
           ISUM=ISUM+1
         ENDIF
40     CONTINUE
        WRITE(6,*) II1,II2,II3,IV1,IV2,IV3
        WRITE(6,*) IN1,IN2,IN3,ID1,ID2,ID3,IM1,IM2,IM3,IX1,IX2,IX3
        WRITE(6,*) ITEM1,ITEM2,ITEM3
       STOP
       END
