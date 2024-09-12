      call sub1;call sub2
      end

      subroutine sub1
      real P(100),B(100)
      p=4
      B(100)=1
      DO 13 IP=1,100
          I1= P(IP)
          P(IP)= ISHFT(I1,31)
   13 CONTINUE
      if(p(100).eq.0)print*,' ok '
      if(p(100).ne.0)print*,' ng '
      END subroutine sub1

      subroutine sub2
      REAL P(10),Q(10),B(10,10)
      P=4
      Q=31
      B(10,10)=1
      DO 13 IP=1,10
          I1= P(IP)
          I2= Q(IP)
          P(IP)= ishft(I1,I2)
   13 CONTINUE
      IF(P(10).EQ.0)PRINT*,' OK '
      IF(P(10).NE.0)PRINT*,' NG '
      END subroutine sub2
