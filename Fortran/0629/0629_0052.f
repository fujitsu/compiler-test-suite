      CALL GETINT
      WRITE(6,*) '## OK ##'
      STOP
      END

      SUBROUTINE GETINT
      COMMON/IGRID/L1,M1,N1,L2,M2,N2,L3,M3,N3
      COMMON/VOLUM/F(-2:140,-2:70,-2:140),H(140,70,140)
      COMMON/GRIDA/DD
      COMMON/GRIDB/X(140),Y(70),Z(140)
      DIMENSION XX(140,12),ZZ(140,12)
      DIMENSION II(140)
      F=2
      DD=2
      X=10
      Z=3
      XX=1
      ZZ=5
      M2=70
      N2=140
      L2=12
      AX=0
      II=5

      DO 1000 J=1,M2
      DO 1000 K=1,N2
      DO 100 I=1,L2
      II(I)=I
      ZZ(I,II(I))=Z(K)
      XX(I,II(I))=X(I)-F(I,J,K)/(F(I+1,J,K)-F(I,J,K)+1)*DD
100   CONTINUE
      DO 300 I=1,L2
      IF(II(I) .EQ. 5) THEN
      AX=0.0
      DO 130 IM=1,5
      AX=AX+XX(I,IM)
130   CONTINUE
      AX=AX/5.0
      DO 150 IM=5,1,-1
      DO 150 JM= 1,IM-1
        ZZ(I,IM) = ZZ(I,JM)
150   CONTINUE

      ELSE IF(II(I).EQ.6) THEN
      AX=0.0
      DO 180 IM=1,6
      AX=AX+XX(I,IM)
180   CONTINUE
      AX=AX/6.0

      ENDIF
300   CONTINUE
1000   CONTINUE
      RETURN
      END
