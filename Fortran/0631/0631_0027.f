      LOGICAL H007(100),P007(100),Q007(100)
      LOGICAL R007(40000),S007(40000),T007(40000)
      LOGICAL H008(3,3),P008(3,3),Q008(3,3)
      LOGICAL H009(200,300,1),P009(200,300,1,1,1,1)
      LOGICAL                 Q009(20,1,300,1,1,1,20)
      LOGICAL R008(3000,20),S008(3000,20),T008(3000,10)
      LOGICAL U007,U008
      DATA  H007,P007,Q007/100*.TRUE.,100*.FALSE.,100*.TRUE./
      DATA  R007,S007,T007/40000*.TRUE.,40000*.FALSE.,40000*.TRUE./
      DATA  H008,P008,Q008/9*.TRUE., 9*.FALSE., 9*.TRUE./
      DATA  R008,S008,T008/60000*.TRUE., 60000*.FALSE., 30000*.TRUE./
      DATA  H009,P009,Q009/60000*.TRUE.,60000*.TRUE.,120000*.FALSE./
      DO 156 I=1,99
      DO 156 J=1,99
        U007   =H007(I)
        H007(I)=P007(I).OR.Q007(I)
  156 CONTINUE
      DO 157 I=3,99
      DO 157 J=3,99
        U007   =P007(I).AND.Q007(I)
        H007(I)=.NOT.U007
        P007(I)=H007(I).AND.Q007(I)
        H007(I)=U007
        H007(I)=P007(I).AND.Q007(I)
  157 CONTINUE
      DO 158 J=1,3
      DO 158 I=1,39990
        U007   =R007(I)
        R007(I)=S007(I).OR.T007(I)
  158 CONTINUE
      DO 159 J=3,13
      DO 159 I=3,399
        U007   =S007(I).AND.T007(I)
        R007(I)=U007
        S007(I)=R007(I).AND.T007(I)
        R007(I)=U007
        R007(I)=S007(I).OR.T007(I)
  159 CONTINUE
      DO 160 I=1,2
      DO 160 J=1,2
        U008   =H008(J,I)
        H008(J,I)=U008.OR.Q008(J,I)
  160 CONTINUE
      DO 161 I=3,3
      DO 161 J=3,3
        U008   =P008(J,I).AND.Q008(1,I)
        H008(J,I)=U008
        P008(J,I)=.NOT.P008(J,I).OR.Q008(J,I)
        H008(J,I)=U008
        H008(1,I)=P008(J,I).OR.Q008(J,I)
  161 CONTINUE
      DO 162 I=1,3000
      DO 162 J=1,9
        U008   =S008(I,J)
        R008(I,J)=U008.OR.T008(I,J)
  162 CONTINUE
      DO 163 J=3,10
      DO 163 I=3,2999
        U008   =S008(I,J).AND.T008(I,J)
        R008(I,J)=U008
        S008(I,J)=R008(I,J).AND.T008(I,J)
        R008(I,J)=.NOT.U008
        R008(I,J)=S008(I,J).OR.T008(I,J)
  163 CONTINUE
      DO 164 I=1,300
      DO 164 J=1,198
        U007   =H009(J,I,1)
        H009(J,I,1)=U007.OR.Q009(1,1,I,1,1,1,1)
  164 CONTINUE
      DO 165 I=1,300
      DO 165 J=1,160
        U007   =P009(J,I,1,1,1,1).AND.Q009(1,1,I,1,1,1,2)
        H009(2,I,1)=U007
        P009(J,I,1,1,1,1)=.NOT.H009(J,I,1).OR.Q009(1,1,I,1,1,1,1)
        U007   =P009(J,I,1,1,1,1).AND.Q009(1,1,1,1,1,1,2)
        H009(1,I,1)=U007
        H009(2,I,1)=P009(J,I,1,1,1,1).AND.Q009(1,1,I,1,1,1,1)
  165 CONTINUE
      WRITE(6,*) (H007(I),I=1,100,10)
      WRITE(6,*) (R007(I),I=1,10000,1000)
      WRITE(6,*) H008
      WRITE(6,*) ((R008(J,I),J=1,3000,100),I=1,20,5)
      WRITE(6,*) (((H009(K,J,I),J=1,300,30),I=1,1),K=1,200,50)
      END
