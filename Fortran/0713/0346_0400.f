          REAL A(10),Z(10),Y(10)
          DATA A/.1,.2,.3,.4,.5,.6,.7,.8,.9,1./
          DATA Z/.1,.2,.3,.4,.5,.6,.7,.8,.9,1./
          DATA Y/.1,.2,.3,.4,.5,.6,.7,.8,.9,1./
          LOGICAL L/.TRUE./
          X = 0.
          S = 0.
          F = 0.
          Q = 0.
          W = 0.
          DO 10 I =  1 , 10
            IF(Z(I) .LE. 10.0 ) THEN
               S = S + A(I)
            ELSE
               F = F + A(I)
            ENDIF
            X = X + A(I)
            IF( L ) THEN
              IF(Z(I) .LE. 10.0 ) THEN
                 Q = Q + A(I)
              ELSE
               W = W + A(I)
              ENDIF
            ENDIF
 10       CONTINUE
          PRINT *,S,X,F,Q,W
          END
