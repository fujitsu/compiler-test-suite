c
c
       call s1
       print *,'pass'
       end
       subroutine s1
       CALL SUB('ABC','DE ')
       END
       module mm
        interface ss1
          module procedure ss1,ss2
        end interface
        contains
       SUBROUTINE ss1(I,X)
       CHARACTER*(*) X(:)
       IF (LEN(X).NE.I) PRINT *,'FAIL'
       if (size(x)/=5)print *,'fail'
       if (size(x,1)/=5)print *,'fail'
       IF (X(1).NE.'ABC') PRINT *,'FAIL'
       DO 1 J=2,5
         IF (X(J).NE.'DE ') PRINT *,'FAIL'
   1   CONTINUE
       END subroutine
       SUBROUTINE ss2(I,X)
       CHARACTER*(*) X(:,:)
       if (size(x)/=5)print *,'fail'
       if (size(x,2)/=5)print *,'fail'
       IF (LEN(X).NE.I) PRINT *,'FAIL'
       IF (X(1,1).NE.'ABC') PRINT *,'FAIL'
       DO 1 J=2,5
         IF (X(1,J).NE.'DE ') PRINT *,'FAIL'
   1   CONTINUE
       END subroutine
       end module
       SUBROUTINE SUB(CHX,CHZ)
       use mm
       CHARACTER   CH3*3,CHA*5,CHX*(*),CHZ*(*),DEF*(*)
       PARAMETER  (DEF='DE ')
       integer(kind=2),parameter,dimension(2)::sh=(/1,5/)
       I1=1
       I2=2
       I3=3
       I4=4
       CH3='DE'
       CHA(2:5)='ABC'
C
       CALL ss1(3, (/ 'ABC' , ((/ DEF  /),k=1,4)/) )
       CALL ss1(3, (/ 'ABC' , ((/ CH3 /),k=1,4)/) )
       CALL ss1(3, (/ 'ABC' ,((/  DEF  /),k=1,i4)/) )
       CALL ss1(3, (/ 'ABC' ,((/ CH3 /),k=1,i4)/) )
       CALL ss1(3, (/ CHA(I2:I4) , ((/ DEF  /),k=1,4)/) )
       CALL ss1(3, (/ CHA(I2:I4) , ((/ CH3 /),k=1,4)/) )
       CALL ss1(3, (/ CHA(I2:I4) ,((/  DEF  /),k=1,i4)/) )
       CALL ss1(3, (/ CHA(I2:I4) ,((/ CH3 /),k=1,i4)/) )
       CALL ss1(3, (/ CHX       , ((/ DEF  /),k=1,4)/) )
       CALL ss1(3, (/ CHX       , ((/ CH3 /),k=1,4)/) )
       CALL ss1(3, (/ CHX       ,((/  DEF  /),k=1,i4)/) )
       CALL ss1(3, (/ CHX       ,((/ CH3 /),k=1,i4)/) )
C
       CALL ss1(3, (/ 'ABC'     , ((/ CH3(I1:I3) /),k=1,4)/) )
       CALL ss1(3, (/ 'ABC'     ,((/ CH3(I1:I3) /),k=1,i4)/) )
       CALL ss1(3, (/ CHA(I2:I4) , ((/ CH3(I1:I3) /),k=1,4)/) )
       CALL ss1(3, (/ CHA(I2:I4) ,((/ CH3(I1:I3) /),k=1,i4)/) )
       CALL ss1(3, (/ CHX       , ((/ CH3(I1:I3) /),k=1,4)/) )
       CALL ss1(3, (/ CHX       ,((/ CH3(I1:I3) /),k=1,i4)/) )
       CALL ss1(3, (/ 'ABC'     , ((/ CHZ        /),k=1,4)/) )
       CALL ss1(3, (/ 'ABC'     ,((/ CHZ        /),k=1,i4)/) )
       CALL ss1(3, (/ CHA(I2:I4) , ((/ CHZ       /),k=1,4)/) )
       CALL ss1(3, (/ CHA(I2:I4) ,((/ CHZ       /),k=1,i4)/) )
       CALL ss1(3, (/ CHX       , ((/ CHZ        /),k=1,4)/) )
       CALL ss1(3, (/ CHX       ,((/ CHZ        /),k=1,i4)/) )
       CALL ss1(3, reshape( (/ 'ABC' , ((/ DEF  /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ 'ABC' , ((/ CH3 /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ 'ABC' ,((/  DEF  /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( (/ 'ABC' ,((/ CH3 /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( (/ CHA(I2:I4) , ((/ DEF  /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ CHA(I2:I4) , ((/ CH3 /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ CHA(I2:I4) ,((/  DEF  /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( (/ CHA(I2:I4) ,((/ CH3 /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( (/ CHX       , ((/ DEF  /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ CHX       , ((/ CH3 /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ CHX       ,((/  DEF  /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( (/ CHX       ,((/ CH3 /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( (/ 'ABC'  , ((/ CH3(I1:I3) /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ 'ABC'  ,((/ CH3(I1:I3) /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape((/CHA(I2:I4),((/ CH3(I1:I3) /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( 
     1 (/ CHA(I2:I4) ,((/ CH3(I1:I3) /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( 
     1 (/ CHX       , ((/ CH3(I1:I3) /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ CHX   ,((/ CH3(I1:I3) /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( (/ 'ABC' , ((/ CHZ        /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ 'ABC' ,((/ CHZ     /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( (/ CHA(I2:I4) , ((/ CHZ   /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ CHA(I2:I4) ,((/ CHZ    /),k=1,i4)/) ,sh))
       CALL ss1(3, reshape( (/ CHX       , ((/ CHZ   /),k=1,4)/) ,sh))
       CALL ss1(3, reshape( (/ CHX       ,((/ CHZ   /),k=1,i4)/) ,sh))
       END
