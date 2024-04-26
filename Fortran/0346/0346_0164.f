          REAL*4 A(10,2),B(10,2),Z(10,2),V(10,2)
          DATA A/20*1.0/
          DATA B/20*1.0/
          X =1.
          Y =2.
          DO 111 J=1,2
          DO 111 I=1,10
             Z(I,J) = ( A(I,J) + X ) + ( B(I,J) + Y )
             V(I,J) = ( B(I,J) + X ) + ( A(I,J) + Y )
 111      CONTINUE
          PRINT *,Z,V
          END
