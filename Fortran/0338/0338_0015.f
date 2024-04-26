      PROGRAM MAIN
      WRITE(6,*)'#### START ####'
      A=0.5
      B=0.5
      C=0.5
      D=0.5
      E=0.5
      F=0.5
      G=0.5
      H=0.5
      I=1.25
      J=1.25
      K=1.25
      L=1.25
      M=1.25
      N=1.1
      O=0.5
      P=0.5
      Q=0.5
      R=0.5
      S=0.5
      T=0.5
      U=0.5
      V=0.5
      W=0.5
      X=0.5
      Y=0.5
      Z=0.5
      FTOTAL=A+B+C+D+E+F+G+H+O+P+Q+R+S+T+U+V+W+X+Y+Z
      ITOTAL=I+J+K+L+M+N
      IF(FTOTAL.EQ.10.0) THEN
        WRITE(6,*)'*** OK_1 ***'
      ELSE
        WRITE(6,*)'??? NG_1 ???'
      ENDIF
      IF(ITOTAL.EQ.6) THEN
        WRITE(6,*)'*** OK_2 ***'
      ELSE
        WRITE(6,*)'??? NG_2 ???'
      ENDIF
      WRITE(6,*)'####  END  ####'
      END
