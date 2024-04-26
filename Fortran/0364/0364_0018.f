      integer a(0:100,0:100),b(0:100,0:100),C(-20:100,-20:100,-20:100)
      a=0
      b=0
      C=0
      do 100 i=1,2
         call sub0(a,b)
         call sub1(a,b)
         call sub2(C)
         call sub3(C)
         call sub4(C)
 100       continue
      write(6,*) a(5,5)
      write(6,*) b(5,5)
      end

      subroutine sub0(a,b)
      integer a(0:100,0:100),b(0:100,0:100)
      NP=10
      a=10
      DO 100  J = 1,NP
         IF (J .EQ. 2) a(0,J)=1
         a(0,J)=10
         b(0,J)=10
 100  CONTINUE
      DO 200  J = 1,NP
         a(0,J)=10
         b(0,J)=10
 200  CONTINUE
      end

      subroutine sub1(a,b)
      integer a(0:100,0:100),b(0:100,0:100)
      a=1
      b=1
      do 10 i=1,10
         if(a(i,1)) 22,11,10
 11      a(i,1)=10
         b(i,1)=11
 22      a(i,1)=20
         b(i,1)=22         
 10   continue
      do 20 i=1,10
         if(a(i,1).eq.20) go to 20
         a(i,1) = 5
         b(i,1) = 5
 20   continue
      end

      subroutine sub2(C)
      INTEGER C(0:100,0:100,0:100)
      A=10
      DO 1 I = 1, 10
         DO 2 J = 1, 10
            DO 3 K = 1, 10
               DO 4 L = 1, 10
               C(K,I,L) = 1
 4          CONTINUE
 3       CONTINUE
         DO 2 K = 5, 10
            C(K-4,I+2,J) = 1
            DO 20 KK = 2,10
               C(K,KK,I) = C(K,KK-1,I)
 20         CONTINUE
 2       CONTINUE
 1    CONTINUE
      END

      subroutine sub3(C)
      INTEGER C(3,3,3)
      A = 1
      DO 1 I = 1, 2
         DO 2 J = 1, 2
            DO 3 K = 1, 2
               DO 4 L = 1, 2
                  CALL SUB( C,K,I,L )
 4             CONTINUE
 3          CONTINUE
 2       CONTINUE
 1    CONTINUE
      END

      SUBROUTINE SUB( C,K,I,L )
      INTEGER C(K,I,L)
      C(K,I,L)=9
      RETURN
      END

      subroutine sub4(C)
      INTEGER C(-20:20,-20:20,-20:20)
      A = 1
      DO 2 J = 1, 2
         DO 3 K = 1, 2
            DO 4 L = 1, 2
               C(J+1-1,1+1+K,1-1+L) = C(J,K,L)
 4          CONTINUE
 3       CONTINUE
 2    CONTINUE
      END
