      call sub2
      end

      subroutine sub2
      integer P(10),Q(10),B(10,10)
      P=10
      Q=10
      B(10,10)=1
      DO 13 IP=1,10
          I1= P(IP)
          I2= Q(IP)
          P(IP)= B(I1,I2)
   13 CONTINUE
      IF(P(10).EQ.1)PRINT*,' OK '
      IF(P(10).NE.1)PRINT*,' NG '
      END subroutine sub2
