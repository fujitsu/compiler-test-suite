      REAL*4 B(10,10),D(10,10,5)

      do i=1,10
         do j=1,10
            do k=1,5
               d(i,j,k) = 2
            enddo
         enddo
      enddo
      b = 1
      WRITE(6,100) b
      WRITE(6,100) d

      DO 10 I=1,10
         DO 20 J=1,10
            B(I,J) =j
            DO 30 K=1,5
               D(I,J,K) = b(I,J)
 30         CONTINUE
 20      CONTINUE
 10   CONTINUE

      WRITE(6,100) d
 100  FORMAT(1H ,10F7.2)
      STOP
      END
