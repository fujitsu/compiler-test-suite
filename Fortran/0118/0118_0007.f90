             REAL A(100)
             A = 1
             CALL SUB1(A,100)
             PRINT*, "OK"
             END

             SUBROUTINE SUB1(A,N)
             INTEGER N
             REAL ISUM/0/
             REAL JSUM/0/
             REAL A(N)
             REAL B(10)/10*0/
             REAL C(100)/100*2/

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
