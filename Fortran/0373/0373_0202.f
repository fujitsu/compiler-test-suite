      call sub1;call sub2
      end

      subroutine sub1
      integer,pointer:: P(:),B(:)
      allocate(p(100),b(100))
      p=100
      B(100)=1
      DO 13 IP=1,100
          I1= P(IP)
          P(IP)= B(I1)
   13 CONTINUE
      if(p(100).eq.1)print*,' ok '
      if(p(100).ne.1)print*,' ng '
      deallocate(p,b)
      END subroutine sub1

      subroutine sub2
      integer,pointer:: P(:),Q(:),B(:,:)
      allocate(P(10),Q(10),B(10,10))
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
      deallocate(p,q,b)
      END subroutine sub2
