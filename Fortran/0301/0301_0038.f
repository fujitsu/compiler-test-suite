      REAL P,Q,R
      INTEGER N
      PARAMETER (N=100)

      REAL A(1:N)/100*0/
      REAL B(1:N)/100*0/
      REAL C(1:N)/100*0/


      P = 0.0
      R = 0.0
      Q = 0.0
      DO 20 I=1,N
         P = P + A(I)
         Q = Q + B(I)
         R = R + C(I)
 20      CONTINUE
      CLOSE(20)

      IF (p.eq.0 .and. q.eq.0 .and. r.eq.0) then
        PRINT *,"OK"
      ELSE
        PRINT *,"NG : ",P,",",Q,",",R
      ENDIF
      END
