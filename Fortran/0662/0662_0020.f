       SUBROUTINE SUB(CHX,CHZ)
       CHARACTER   CH3*3,CHA*5,CHX*(*),CHZ*(*),DEF*(*)
       PARAMETER  (DEF='DEF')
       PARAMETER  (I1=1,I2=2,I3=3,I4=4,I5=5)
       CH3='DEF???????'
       CHA(2:5)='ABC'
       CALL S1(3, (/ 'ABC' , ((/ DEF  /) ,K=1,4)/) )
       CALL S1(3, (/ 'ABC' , ((/ CH3 /) ,K=1,4)/) )
       CALL S1(3, (/ 'ABC' , ((/  DEF  /) ,K=1,I4)/) )
       CALL S1(3, (/ 'ABC' , ((/ CH3 /) ,K=1,I4)/) )
       CALL S1(3, (/ CHA(I2:I4) , ((/ DEF  /) ,K=1,4)/) )
       CALL S1(3, (/ CHA(I2:I4) , ((/ CH3 /) ,K=1,4)/) )
       CALL S1(3, (/ CHA(I2:I4) , ((/  DEF  /) ,K=1,I4)/) )
       CALL S1(3, (/ CHA(I2:I4) , ((/ CH3 /) ,K=1,I4)/) )
       CALL S1(3, (/ CHX       , ((/ DEF  /) ,K=1,4)/) )
       CALL S1(3, (/ CHX       , ((/ CH3 /) ,K=1,4)/) )
       CALL S1(3, (/ CHX       , ((/  DEF  /) ,K=1,I4)/) )
       CALL S1(3, (/ CHX       , ((/ CH3 /) ,K=1,I4)/) )
       CALL S1(3, (/ 'ABC'     , ((/ CH3(I1:I3) /) ,K=1,4)/) )
       CALL S1(3, (/ 'ABC'     , ((/ CH3(I1:I3) /) ,K=1,I4)/) )
       CALL S1(3, (/ CHA(I2:I4) , ((/ CH3(I1:I3) /) ,K=1,4)/) )
       CALL S1(3, (/ CHA(I2:I4) , ((/ CH3(I1:I3) /) ,K=1,I4)/) )
       CALL S1(3, (/ CHX       , ((/ CH3(I1:I3) /) ,K=1,4)/) )
       CALL S1(3, (/ CHX       , ((/ CH3(I1:I3) /) ,K=1,I4)/) )
       CALL S1(3, (/ 'ABC'     , ((/ CHZ        /) ,K=1,4)/) )
       CALL S1(3, (/ 'ABC'     , ((/ CHZ        /) ,K=1,I4)/) )
       CALL S1(3, (/ CHA(I2:I4) , ((/ CHZ       /) ,K=1,4)/) )
       CALL S1(3, (/ CHA(I2:I4) , ((/ CHZ       /) ,K=1,I4)/) )
       CALL S1(3, (/ CHX       , ((/ CHZ        /) ,K=1,4)/) )
       CALL S1(3, (/ CHX       , ((/ CHZ        /) ,K=1,I4)/) )
       PRINT *,' PASS'
       END
       SUBROUTINE S1(I,X)
       CHARACTER*(*) X(5)
       IF (LEN(X).NE.I) PRINT *,'FAIL'
       IF (X(1).NE.'ABC') PRINT *,'FAIL'
       DO 1 J=2,5
         IF (X(J).NE.'DEF') PRINT *,'FAIL'
   1   CONTINUE
       END
       CALL SUB('ABC','DEF')
       END
