       LOGICAL  L(10),LRC
       DATA     L/5*.TRUE.,5*.FALSE./,LRC/.TRUE./
       REAL     A(10)
       INTEGER IL(10)
       DATA    IL/1,2,3,4,5,6,7,8,9,10/

       DO 10 J = 1 , 10
       DO 10 I = 1 , 10
         A(I) = I
         IF(LRC) THEN
           IF(L(I)) THEN
             A(IL(I)) = I**2
           ENDIF
         ENDIF
   10 CONTINUE
      PRINT *,A
      END
