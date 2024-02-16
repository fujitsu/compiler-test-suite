             REAL A(100)
             DO I=1,100
               A(I) = I * 1.1
             ENDDO

             CALL SUB1(A,100)
             PRINT*, "OK"
             END

             SUBROUTINE SUB1(A,N)
             INTEGER N,I
             REAL MAX1/0.0/
             REAL A(N)
             REAL B(10)/10*0.0/

             DO I=1,N
               MAX1 = MAX(MAX1,A(I))
             ENDDO

             DO I=1,N
               B(5) = MAX(B(5),A(I))
             ENDDO

             RETURN
             END
