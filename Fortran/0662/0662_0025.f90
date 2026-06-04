       SUBROUTINE SUB(Y,YA,Z,ZA,I5,C)
       CHARACTER*(*) Y,YA(I5),Z,ZA(I5),C
       YA=Y
       ZA=Z
       CALL S( INDEX (    YA      , (/ ZA    /) ) )
       CALL S( INDEX (    YA//C   , (/ ZA//C /) ) )
       CALL S( INDEX ( (/ YA   /) , (/ ZA    /) ) )
       CALL S( INDEX ( (/ YA//C/) , (/ ZA//C /) ) )
       CALL S( INDEX ( (/ ((/Y/),I=1,I5) /) , (/     ZA   /) ) )
       CALL S( INDEX ( (/ (/((/Y/),I=1,I5)/)//C /) , (/     ZA  //C /) ) )
       CALL S( INDEX (    Y       , (/ ZA    /) ) )
       CALL S( INDEX (    Y //C   , (/ ZA//C /) ) )
       CALL S( INDEX (    Y       , (/     ZA   /) ) )
       CALL S( INDEX (    Y//C    , (/     ZA  //C /) ) )
       CALL S( INDEX (    YA      ,    Z        ) )
       CALL S( INDEX (    YA//C   ,    Z //C    ) )
       CALL S( INDEX ( (/ YA   /) ,    Z        ) )
       CALL S( INDEX ( (/ YA//C/) ,    Z //C    ) )
       CALL S( INDEX ( (/ ((/Y/),I=1,I5) /) ,        Z       ) )
       CALL S( INDEX ( (/ (/((/Y/),I=1,I5)/)//C  /) ,        Z   //C    ))
       END
       SUBROUTINE S(IA)
       INTEGER IA(5)
       DO 1 I=1,5
          IF(IA(I).NE.5) PRINT *,'FAIL'
    1  CONTINUE
       END
       CHARACTER*10 YA(5),Y,Z*1,ZA(5)*1
       Y='123456789A'
       Z='5'
       CALL SUB(Y,YA,Z,ZA,5,'')
       PRINT *,'PASS'
       END
