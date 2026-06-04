      SUBROUTINE CH(E,F,P,EA,FA,PA)
      CHARACTER*3 D    ,E    *(*),F    *(*),G    *3,O    *3,P    *(*)
      CHARACTER*3 DA(3),EA(3)*(*),FA(3)*(*),GA(3)*3,OA(3)*3,PA(3)*(*)
      I1=1
      I3=3
      D='ABC'
      G='XY'
      O='T'
      DA='ABC'
      GA='XY'
      OA='T'
      CALL SUB1( LEN(D),13,
     1          (/ D, D , '1234'(1:3)  , '12 '  ,DA(1) , E , F , P ,
     2             O    , G//O  , G//G, D(I1:I3),DA(I1)(I1:I3) /))
      CALL SUB2( LEN(DA(I1)),13,
     1       (/DA(I1), D , '1234'(1:3)  , '12 '  ,DA(1) , E , F , P ,
     2             O    , G//O  , G//G,D(I1:I3),DA(I1)(I1:I3) /))
      CALL SUB3( LEN(DA(I1)(I1:I3)),13,
     1          (/DA(I1)(I1:I3),
     2                 D , '1234'(1:3)  , '12 '  ,DA(1) , E , F , P ,
     3            O    , G//O  , G//G, D(I1:I3),DA(I1)(I1:I3) /) )
      CALL SUB4( LEN(F),13,
     1          (/ F, D , '1234'(1:3)  , '12 '  ,DA(1) , E , F , P ,
     2            O    , G//O  , G//G,D(I1:I3),DA(I1)(I1:I3) /))
      CALL SUB5( LEN(G//O),13,
     1          (/ G//O, D , '1234'(1:3)  , '12 '  ,DA(1) , E , F , P ,
     2             O    , G//O , G//G, D(I1:I3),DA(I1)(I1:I3) /))
      CALL SUBX1(LEN(DA), 3*9 ,
     1            (/ DA ,DA , EA , FA , GA , OA , PA , OA//OA ,
     2               GA//OA /) )
      CALL SUBX1(LEN(DA), 3*9 ,
     1            (/ DA ,((/D/),ijk=1,3) , ((/E/),ijk=1,3) , 
     1                   ((/F/),ijk=1,3) ,
     1               ((/G/),ijk=1,3) , ((/O/),ijk=1,3) ,
     1               ((/P/),ijk=1,3) , ((/O/),ijk=1,3) ,
     2               ((/G//O/),ijk=1,3) /))
      CALL SUBX1(LEN(DA), I3*9 ,
     1     (/ DA ,((/D/),j=1,i3) , ((/E/),j=1,i3) , ((/F/),j=1,i3) ,
     1     ((/G/),j=1,i3) , ((/O/),j=1,i3) , ((/P/),j=1,i3) , 
     1     ((/O/),j=1,i3) ,
     2     ((/G//O/),j=1,i3) /) )
      CALL SUBX1(LEN((/((/D/),j=1,3)/)), 3*9 ,
     1            (/ ((/D/),j=1,3) ,((/D/),j=1,3) , ((/E/),j=1,3) , 
     1    ((/F/),j=1,3) ,
     1     ((/G/),j=1,3) , ((/O/),j=1,3) , ((/P/),j=1,3) , 
     1     ((/O/),j=1,3) ,
     2      ((/G//O/),j=1,3) /) )
      CALL SUBX1(LEN((/((/D/),j=1,3)/)), I3*9 ,
     1            (/ ((/D/),j=1,3) ,((/D/),j=1,i3) ,((/E/),j=1,3) ,
     1  ((/F/),j=1,3) ,
     1  ((/G/),j=1,i3) , 
     1  ((/O/),j=1,i3) , ((/P/),j=1,i3) , ((/O/),j=1,i3) ,
     2  ((/G//O/),j=1,i3)
     1 /) )
      CALL SUBX1(LEN((/((/D/),j=1,3)/)), I3*9 ,
     1            (/ ((/D/),j=1,3) ,((/D(I1:I3)/),j=1,i3) , 
     1  ((/E/),j=1,i3) , ((/F(I1:I3)/),j=1,i3) ,
     1        ((/G/),j=1,i3) , ((/O/),j=1,i3) , ((/P/),j=1,i3) ,
     1  ( (/O/),j=1,i3) ,
     2  (  (/G(I1:2)//O(I1:1)/),j=1,i3) /) )
      CALL SUBX2(LEN(FA), 3*9 ,
     1            (/ FA ,DA , EA , FA , GA , OA , PA , OA//OA ,
     2               GA//OA /) )
      CALL SUBX2(LEN(FA), 3*9 ,
     1      (/ FA , ((/D/),j=1,3) , ((/E/),j=1,3) , ((/F/),j=1,3) ,
     1               ((/G/),j=1,3) , ((/O/),j=1,3) , ((/P/),j=1,3) ,
     1 ( (/O/),j=1,i3) ,
     2               ((/G//O/),j=1,3) /) )
      CALL SUBX2(LEN(FA), I3*9 ,
     1            (/ FA ,((/D/),j=1,i3) , ((/E/),j=1,i3) ,
     1   ((/F/),j=1,i3) ,
     1    ((/G/),j=1,i3) , ((/O/),j=1,i3) , ((/P/),j=1,i3) ,
     1  ((/O/),j=1,i3) ,
     2               ((/G//O/),j=1,i3) /) )
      CALL SUBX2(LEN((/((/F/),j=1,3)/)), 3*9 ,
     1         (/ ((/F/),j=1,3) ,DA , EA , FA , GA , OA , PA , OA//OA ,
     2               GA//OA /) )
      CALL SUBX2(LEN((/((/F/),j=1,3)/)), 3*9 ,
     1 (/ ((/F/),j=1,3) ,((/D/),j=1,3) , ((/E/),j=1,3) ,((/F/),j=1,i3),
     1               ((/G/),j=1,3) , ((/O/),j=1,3) , ((/P/),j=1,3) ,
     1  ((/O/),j=1,3) ,
     2               ((/G//O/),j=1,3) /) )
      CALL SUBX2(LEN((/((/F/),j=1,i3)/)), I3*9 ,
     1            (/ ((/F/),j=1,3) ,((/D/),j=1,i3) , ((/E/),j=1,3) , 
     1 ((/F/),j=1,i3) ,
     1               ((/G/),j=1,i3) , ((/O/),j=1,i3) , ((/P/),j=1,i3) ,
     1  ((/O/),j=1,i3) ,
     2               ((/G//O/),j=1,i3) /) )
      CALL SUBX2(LEN((/((/F/),j=1,3)/)), I3*9 ,
     1            (/ ((/F/),j=1,3) ,((/D(I1:I3)/),j=1,i3) ,
     1  ((/E/),j=1,i3) , ((/F(I1:I3)/),j=1,i3) ,
     1        ((/G/),j=1,i3) , ((/O/),j=1,i3) , ((/P/),j=1,i3) ,
     1  ((/O/),j=1,i3) ,
     2      ((/G(I1:2)//O(I1:1)/),j=1,i3) /) )
      CALL SUBX3(LEN(GA//OA), 3*9 ,
     1            (/ GA//OA ,DA , EA , FA , GA , OA , PA , OA//OA ,
     2               GA//OA /))
      CALL SUBX3(LEN(GA//OA), 3*9 ,
     1            (/ GA//OA ,((/D/),j=1,3) , ((/E/),j=1,3) , 
     1 ((/F/),j=1,3) ,
     1 ((/G/),j=1,3) , ((/O/),j=1,3) , ((/P/),j=1,3) , ((/O/),j=1,3),
     2      ((/G//O/),j=1,3) /) )
      CALL SUBX3(LEN(GA//OA), I3*9 ,
     1   (/ GA//OA ,((/D/),j=1,i3) , ((/E/),j=1,i3) , ((/F/),j=1,i3) ,
     1       ((/G/),j=1,i3) , ((/O/),j=1,i3) , ((/P/),j=1,i3) , 
     1   ((/O/),j=1,i3) ,
     2       ((/G//O/),j=1,i3) /) )
      CALL SUBX3(LEN(GA//OA), I3*9 ,
     1            (/ GA//OA ,((/D(I1:I3)/),j=1,i3) , ((/E/),j=1,i3) ,
     1  ((/F(I1:I3)/),j=1,i3) ,
     1  ((/G/),j=1,i3) , ((/O/),j=1,i3) , ((/P/),j=1,i3) , 
     1  ((/O/),j=1,i3) ,
     2  ((/G(I1:2)//O(I1:1)/),j=1,i3) /) )
      CALL SUBX3(LEN((/((/G//O/),j=1,i3)/)), 3*9 ,
     1     (/ ((/G//O/),j=1,3) ,DA , EA , FA , GA , OA , PA , OA//OA ,
     2              GA//OA /) )
      CALL SUBX3(LEN((/((/G//O/),j=1,i3)/)), 3*9 ,
     1  (/ ((/G//O/),j=1,3) ,((/D/),j=1,3) , ((/E/),j=1,3) , 
     1 ((/F/),j=1,i3) ,
     1 ((/G/),j=1,3) , ((/O/),j=1,3) , ((/P/),j=1,3),((/O/),j=1,i3) ,
     2               ((/G//O/),j=1,3) /) )
      CALL SUBX3(LEN((/((/G//O/),j=1,3)/)), I3*9 ,
     1     (/ ((/G//O/),j=1,3) ,((/D/),j=1,i3) , ((/E/),j=1,i3) ,
     1  ((/F/),j=1,i3) ,
     1   ((/G/),j=1,i3) , ((/O/),j=1,i3) , ((/P/),j=1,i3) , 
     1  ((/O/),j=1,i3) ,
     2    ((/G//O/),j=1,i3) /) )
      CALL SUBX3(LEN((/((/G//O/),j=1,3)/)), I3*9 ,
     1       (/ ((/G//O/),j=1,3) ,((/D(I1:I3)/),j=1,i3) , 
     1 ((/E/),j=1,i3) , ((/F(I1:I3)/),j=1,i3) ,
     1        ((/G/),j=1,i3) , ((/O/),j=1,i3) , ((/P/),j=1,i3) ,
     1 ((/O/),j=1,i3) ,
     2    ((/G(I1:2)//O(I1:1)/),j=1,i3) /) )
      PRINT *,'PASS'
      END
      SUBROUTINE SUBX1(LE ,NUM,CH)
      CHARACTER*(*) CH(NUM)
      IF (CH( 1).NE.'ABC') PRINT *,'FAIL'
      IF (CH( 3).NE.'ABC') PRINT *,'FAIL'
      GOTO 1
      ENTRY      SUBX2(LE ,NUM,CH)
      IF (CH( 1).NE.'KLM') PRINT *,'FAIL'
      IF (CH( 3).NE.'KLM') PRINT *,'FAIL'
      GOTO 1
      ENTRY      SUBX3(LE ,NUM,CH)
      IF (CH( 1).NE.'XYT') PRINT *,'FAIL'
      IF (CH( 3).NE.'XYT') PRINT *,'FAIL'
  1   IF (LEN(CH).NE.LE )  PRINT *,'FAIL'
      IF (CH( 4).NE.'ABC') PRINT *,'FAIL'
      IF (CH( 6).NE.'ABC') PRINT *,'FAIL'
      IF (CH( 7).NE.'IJ ') PRINT *,'FAIL'
      IF (CH( 9).NE.'IJ ') PRINT *,'FAIL'
      IF (CH(10).NE.'KLM') PRINT *,'FAIL'
      IF (CH(12).NE.'KLM') PRINT *,'FAIL'
      IF (CH(13).NE.'XY ') PRINT *,'FAIL'
      IF (CH(15).NE.'XY ') PRINT *,'FAIL'
      IF (CH(16).NE.'T  ') PRINT *,'FAIL'
      IF (CH(18).NE.'T  ') PRINT *,'FAIL'
      IF (CH(19).NE.'OPQ') PRINT *,'FAIL'
      IF (CH(21).NE.'OPQ') PRINT *,'FAIL'
      IF (CH(22).NE.'TT ') PRINT *,'FAIL'
      IF (CH(24).NE.'TT ') PRINT *,'FAIL'
      IF (CH(25).NE.'XYT') PRINT *,'FAIL'
      IF (CH(27).NE.'XYT') PRINT *,'FAIL'
      IF (NUM.NE.27      ) PRINT *,'FAIL'
      END
      SUBROUTINE SUB1(LE ,NUM,CH)
      CHARACTER*(*) CH(NUM)
      IF (CH( 1).NE.'ABC') PRINT *,'FAIL'
      GOTO 1
      ENTRY      SUB2(LE ,NUM,CH)
      ENTRY      SUB3(LE ,NUM,CH)
      IF (CH( 1).NE.'ABC') PRINT *,'FAIL'
      GOTO 1
      ENTRY      SUB4(LE ,NUM,CH)
      IF (CH( 1).NE.'KLM') PRINT *,'FAIL'
      GOTO 1
      ENTRY      SUB5(LE ,NUM,CH)
      IF (CH( 1).NE.'XYT') PRINT *,'FAIL'
  1   IF (LEN(CH).NE.LE )  PRINT *,'FAIL'
      IF (CH( 2).NE.'ABC') PRINT *,'FAIL'
      IF (CH( 3).NE.'123') PRINT *,'FAIL'
      IF (CH( 4).NE.'12 ') PRINT *,'FAIL'
      IF (CH( 5).NE.'ABC') PRINT *,'FAIL'
      IF (CH( 6).NE.'IJ ') PRINT *,'FAIL'
      IF (CH( 7).NE.'KLM') PRINT *,'FAIL'
      IF (CH( 8).NE.'OPQ') PRINT *,'FAIL'
      IF (CH( 9).NE.'TT ') PRINT *,'FAIL'
      IF (CH(10).NE.'XYT') PRINT *,'FAIL'
      IF (CH(11).NE.'XYX') PRINT *,'FAIL'
      IF (CH(12).NE.'ABC') PRINT *,'FAIL'
      IF (CH(13).NE.'ABC') PRINT *,'FAIL'
      IF (NUM.NE.13      ) PRINT *,'FAIL'
      END
      CHARACTER   EA(3)*3,FA(3)*3,PA(3)*3
      EA='IJ'
      FA='KLM'
      PA='OPQ'
      PRINT *,'PASS'
      END
