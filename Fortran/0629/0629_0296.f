         SUBROUTINE TSCR5(A,B)
         REAL*4  B(10,10),A(100)
         DO 500 J=1,10
            DO 500 I=1,10
               B(I,J)=3.0
500      CONTINUE
         do i=1,100
            A(i) = 2.0
         enddo
         RETURN
         END

         SUBROUTINE TSCR6(A,B)
         REAL*4  B(2,50),A(5,20)
         DO 500 J=1,50
            DO 500 I=1,2
               B(I,J)=3.0
500      CONTINUE
         do i=1,5
            do j=1,20
               A(i,j) = 2.0
         enddo
         enddo
         RETURN
         END

         REAL*4 AA(100),BB(100),C(10,10),d(10)
         c=3.
         d=2.
         do i=1,8
            do j=1,8
               c(i,j) = d(i)
            enddo
         enddo
         CALL TSCR5(AA,BB)
         WRITE(6,*) AA,BB,C
         CALL TSCR6(AA,BB)
         WRITE(6,*) AA,BB
         END
