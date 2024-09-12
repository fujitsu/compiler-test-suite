       INTEGER IS1,IS2,IS3,IA1(10),IA2(10),IA3(10)
       REAL    RS1,RS2,RS3,RA1(10),RA2(10),RA3(10)
       REAL*8  DS1,DS2,DS3,DA1(10),DA2(10),DA3(10)
       DATA    IA1,IA2,IA3/30*2/,RA1,RA2,RA3/30*2./,DA1,DA2,DA3/30*2.D0/
       LOGICAL L(10)
       DATA    L/.TRUE.,.FALSE.,.FALSE.,.TRUE.,.TRUE.,.FALSE.,.FALSE.,
     1           .TRUE.,.FALSE.,.FALSE./

       DO 10 J=1,2
         DO 10 I=1,10
           IS1 = IA1(I)
           IS2 = IA2(I)
           IS3 = IA3(I)
           RS1 = RA1(I)
           RS2 = RA2(I)
           RS3 = RA3(I)
           DS1 = DA1(I)
           DS2 = DA2(I)
           DS3 = DA3(I)

           IS1 = IS1 + IS1
           IS2 = IS2 * IS2
           IS3 = IS3 - IS3
           RS1 = RS1 + RS1
           RS2 = RS2 * RS2
           RS3 = RS3 / RS3
           DS1 = DS1 + DS1
           DS2 = DS2 * DS2
           DS3 = DS3 / DS3
           IF( L(I) ) THEN
             IS1 = IS1 + IS1
             IS2 = IS2 * IS2
             IS3 = IS3 - IS3
             RS1 = RS1 + RS1
             RS2 = RS2 * RS2
             RS3 = RS3 / RS3
             DS1 = DS1 + DS1
             DS2 = DS2 * DS2
             DS3 = DS3 / DS3
           ENDIF
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
