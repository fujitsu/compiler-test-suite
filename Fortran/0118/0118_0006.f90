             INTEGER A(100)
             A = 1
             CALL SUB1(A,100)
             PRINT*, "OK"
             END

             SUBROUTINE SUB1(A,N)
             INTEGER ISUM/0/,N,I
             INTEGER JSUM/0/
             INTEGER A(N)
             INTEGER B(10)/10*0/
             INTEGER C(100)/100*2/

             DO I=1,N
               ISUM = ISUM + A(I)
             ENDDO

             DO I=1,N
               B(5) = B(5) * A(I)
             ENDDO

             DO I=1,N
               JSUM = JSUM + A(I) * C(I)
             ENDDO

             RETURN
             END
