      PROGRAM MAIN
      DIMENSION CG(7)
      COMMON /NB/NB,N6
      COMMON G(2,200),RV(500)
      DO 10 I=1,200
        DO 10 J=1,2
          G(J,I)=1
   10 CONTINUE
      DO 20 I=1,500
   20   RV(I)=2.
      N1=1
      N2=200
      CALL CENGR(N1,N2,CG)
      
      WRITE(6,*) CG
      STOP
      END
C
      SUBROUTINE CENGR(N1,N2,CG)
      DIMENSION CG(7)
      COMMON /NB/NB,N6
      COMMON G(2,200),RV(500)
      DO 1 J=1,7
1     CG(J) = 0.0
      DO 3 L=N1,N2
        I=2*L-1
        DO 2 J=1,6
          K=I+J
2       CG(J)=CG(J)+G(1,L)*RV(K)
        CG(7)=CG(7)+G(1,L)
3     CONTINUE
      RETURN
      END
