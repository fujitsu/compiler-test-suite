      call sub1;call sub2;call sub3;call sub4
      end

      subroutine sub1
      real P(100),B(100)
      p=100
      B(100)=1
      DO 13 IP=1,100
          I1= P(IP)
          P(IP)= B(I1)
   13 CONTINUE
      if(p(100).eq.1)print*,' ok '
      if(p(100).ne.1)print*,' ng '
      END subroutine sub1

      subroutine sub2
      REAL P(10),Q(10),B(10,10)
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

      subroutine sub3
      REAL P(100),B(100)
      EQUIVALENCE(I1,I2)
      P=100
      B(100)=1
      DO 13 IP=1,100
          I2= P(IP)
          P(IP)= B(I1)
   13 CONTINUE
      if(p(100).eq.1)print*,' ok '
      if(p(100).ne.1)print*,' ng '
      END subroutine sub3

      subroutine sub4
      REAL P(100),Q(100),B(100)
      EQUIVALENCE(I1,I2) 
      P=100
      Q=100
      B(100)=1
      DO 13 IP=1,100
          I1= P(IP)
          I2= Q(IP)
          P(IP)= B(I1)
   13 CONTINUE
      if(p(100).eq.1)print*,' ok '
      if(p(100).ne.1)print*,' ng '
      END subroutine sub4
