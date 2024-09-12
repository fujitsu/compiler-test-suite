       INTEGER IS1,IS2,IS3,IA1(20),IA2(20),IA3(20)
       REAL    RS1,RS2,RS3,RA1(20),RA2(20),RA3(20)
       REAL*8  DS1,DS2,DS3,DA1(20),DA2(20),DA3(20)
       DATA    IA1,IA2,IA3/60*2/,RA1,RA2,RA3/60*2./,DA1,DA2,DA3/60*2.D0/

       DO 10 J=1,2
         DO 10 I=5,15
           IS1 = IA1(I)
           IS2 = IA2(I)
           IS3 = IA3(I)
           IA1(I+1) = IS2 + IS3
           IA1(I+2) = IS2 * IS3
           IA1(I+3) = IS2 - IS3
           IA1(I+4) = IS2 + IS2
           IS1 = IS1 * IS2
           RS1 = RA1(I)
           RS2 = RA2(I)
           RS3 = RA3(I)
           RA1(I+1) = RS2 + RS3
           RA1(I+2) = RS2 * RS3
           RA1(I+3) = RS2 - RS3
           RA1(I+4) = RS2 / RS3
           RS1 = RS1 * RS2
           DS1 = DA1(I)
           DS2 = DA2(I)
           DS3 = DA3(I)
           DA1(I+1) = DS2 + DS3
           DA1(I+2) = DS2 * DS3
           DA1(I+3) = DS2 - DS3
           DA1(I+4) = DS2 / DS3
           DS1 = DS1 * DS2

           IA1(I) = IS3
           IA2(I) = IS2
           IA3(I) = IS1
           RA1(I) = RS3
           RA2(I) = RS2
           RA3(I) = RS1
           DA1(I) = DS3
           DA2(I) = DS2
           DA3(I) = DS1
   10 CONTINUE

      PRINT *,IA1,IA2,IA3,RA1,RA2,RA3,DA1,DA2,DA3
      END
