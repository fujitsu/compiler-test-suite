      PROGRAM MAIN

      INTEGER*4  I041(11),I042(11)
      LOGICAL*4  L041(11),L042(11),L043(11),L044(11)

      DATA       I041/01,02,03,04,05,06,07,08,09,10,11/
      DATA       I042/11,10,09,08,07,06,05,04,03,02,01/

      DATA       L041/11*.TRUE. /
      DATA       L042/11*.FALSE./

      DO 11 I1=1,11
        L043(I1)=.TRUE.
        L044(I1)=.TRUE.
        IF(I1.LE.6) THEN
                      L041(I1)=I041(I1).EQ.I042(I1)
                      L043(I1)=L041(I1)
        ENDIF
        IF(I1.LE.6) THEN
                      L042(I1)=I041(I1).EQ.I042(I1)
                      L044(I1)=L042(I1)
        ENDIF
        L043(I1)=.NOT.L043(I1)
        L044(I1)=.NOT.L044(I1)
11    CONTINUE
      WRITE(6,110) (L041(I1),I1=1,11),(L043(I1),I1=1,11),
     1             (L042(I1),I1=1,11),(L044(I1),I1=1,11)

      DO 12 I1=1,11
        L043(I1)=.TRUE.
        L044(I1)=.TRUE.
        IF(I1.LE.6) THEN
                      L041(I1)=I041(I1).EQ.I042(I1)
                      L043(I1)=L041(I1)
        ENDIF
        IF(I1.LE.6) THEN
                      L042(I1)=I041(I1).EQ.I042(I1)
                      L044(I1)=L042(I1)
        ENDIF
        L043(I1)=L041(I1).AND.L043(I1)
        L044(I1)=L042(I1).AND.L044(I1)
12    CONTINUE
      WRITE(6,110) (L041(I1),I1=1,11),(L043(I1),I1=1,11),
     1             (L042(I1),I1=1,11),(L044(I1),I1=1,11)

      DO 13 I1=1,11
        L043(I1)=.TRUE.
        L044(I1)=.TRUE.
        IF(I1.LE.6) THEN
                      L041(I1)=I041(I1).EQ.I042(I1)
                      L043(I1)=L041(I1)
        ENDIF
        IF(I1.LE.6) THEN
                      L042(I1)=I041(I1).EQ.I042(I1)
                      L044(I1)=L042(I1)
        ENDIF
        L043(I1)=L041(I1).OR. L043(I1)
        L044(I1)=L042(I1).OR. L044(I1)
13    CONTINUE
      WRITE(6,110) (L041(I1),I1=1,11),(L043(I1),I1=1,11),
     1             (L042(I1),I1=1,11),(L044(I1),I1=1,11)
      STOP

110   FORMAT(1H0,5X,'*=*=*     L041(1,...,11)   *=*=*',
     1      /1H ,5X,11(2X,L4),
     2      /1H ,5X,'*=*=*     L043(1,...,11)   *=*=*',
     3      /1H ,5X,11(2X,L4),
     4      /1H ,5X,'*=*=*     L042(1,...,11)   *=*=*',
     5      /1H ,5X,11(2X,L4),
     6      /1H ,5X,'*=*=*     L044(1,...,11)   *=*=*',
     7      /1H ,5X,11(2X,L4))
      END
