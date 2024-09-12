       INTEGER IA1(20),IA2(20),IA3(20)
       INTEGER IL1(20),IL2(20),IL3(20),IL0(20),ILS
       DATA    IL0/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
       DATA    IL1/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
       DATA    IL2/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
       DATA    IL3/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/

       IA1 = 0
       IA2 = 0
       IA3 = 0

      DO 10 I=5,15
        ILS = IL0(I)
        IS1 = IL1(I)
        IS2 = IL2(I)
        IS3 = IL3(I)

        IL1(IS1+1) = ILS + 1
        IL1(IS1+2) = ILS + 2
        IL1(IS1+3) = ILS + 3
        IL1(IS1+4) = ILS + 4
        IS1 = IS2 * IS3

        IL2(IS2+1) = ILS + 1
        IL2(IS2+2) = ILS + 2
        IL2(IS2+3) = ILS + 3
        IL2(IS2+4) = ILS + 4
        IS2 = IS1 * IS3

        IL3(IS3+1) = ILS + 1
        IL3(IS3+2) = ILS + 2
        IL3(IS3+3) = ILS + 3
        IL3(IS3+4) = ILS + 4
        IS3 = IS2 * IS1

        IA1(I) = IS1
        IA2(I) = IS2
        IA3(I) = IS3
   10 CONTINUE

      PRINT *,IA1,IA2,IA3,IL1,IL2,IL3
      END
