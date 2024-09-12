      NAMELIST     /NAMEL/   I ,K ,IA,IB,IC,IX,IY,IZ,
     +                       N ,M1,M2,M3,M4,
     +                       Z ,A ,D ,X ,Y

      WRITE(6,1000)
 1000 FORMAT(1H1,'SPECIAL CASE (03)')

    1 CONTINUE
         I    =    7
         K    =    8
         IA   =    10
         IB   =    20
         IC   =    30
         X    =    1.
         Z    =    2.
         B    =    3.
         F    =    4.
         M    =    5.
         Y    =    6.
         G    =    7.
         IX   =    IA   +    IB
         IY   =    IA   +    IB   -    IC
         Z    =    X
         A    =    Z    +    B
         D    =    F    *    Z
         X    =    2    *    M
         Z    =    Y    /    4
    2 CONTINUE
         M1   =    I    **   2    +    I
         M2   =    FLOAT(I)
         M3   =    (I   *    3)   /    (I   *    3)
         M4   =    K    *    M3
         M3   =    I    *    3
         Y    =    2    **   I    +    M4
         I    =    I    +    1
         K    =    K    -    2
         IZ   =    IB   +    IA
         N    =    Z    +    G
         IY   =    IA   +    IB   -    IC
         IF(I .LT. 9) GO TO  2
    3 CONTINUE
         IX   =    IA   +    IB
         IY   =    IA   +    IB   *    IC
         K    =    IA   +    IB   +    IC
         X    =    Z    +    1.
         Z    =    G    +    F    *    K
         I    =    I    +    3
         Y    =    A    +    D    /    G
         IZ   =    IB   +    IA
         WRITE(6,NAMEL)

      STOP
      END
