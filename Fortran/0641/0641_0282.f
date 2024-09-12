      PROGRAM MAIN
       REAL*8 A(10), B(10), C(10), D(10), E(10), F(10)
       INTEGER N
       PARAMETER (N = 10)
       DATA A/10*1.0/ 
       DATA B/10*1.0/ 
       DATA C/10*1.0/ 
       DATA D/10*1.0/ 
       DATA E/10*1.0/ 
       DATA F/10*1.0/ 
       DOUBLE PRECISION DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, 
     X   DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

       DO J=1,7,4
        DO I=1,10
         DD1 = I
         DD2 = I
         DD3 = I
         DD4 = I
        END DO
        A(J) = DD1
        A(J+1) = DD2
        A(J+2) = DD3
        A(J+3) = DD4
       END DO
       DO I=1,10
        DD5 = I
        DD6 = I
       END DO
       A(9) = DD5
       A(10) = DD6


       DO I=1,10
        DO J=2,8,3
         A(J) = A(J-1)
         A(J+1) = A(J)
         A(J+2) = A(J+1)
        END DO
       END DO

       DO I=1,10
        DO J=2,8,3
         A(J) = A(J-1)
         A(J+1) = A(J)
         A(J+2) = A(J+1)
        END DO
        DO J=2,8,3
         B(J) = C(J) + A(J)
         B(J+1) = C(J+1) + A(J+1)
         B(J+2) = C(J+2) + A(J+2)
        END DO
       END DO

       DO I=1,6,5
        A(I) = B(I)
        A(I+1) = B(I+1)
        A(I+2) = B(I+2)
        A(I+3) = B(I+3)
        A(I+4) = B(I+4)
       END DO
       DO J=1,7,4
        DD7 = D(J)
        DD8 = D(J+1)
        DD9 = D(J+2)
        DD10 = D(J+3)

        C(J) = DD7
        C(J+1) = DD8
        C(J+2) = DD9
        C(J+3) = DD10
       END DO
       DO J=9,10,1
        DD11 = D(J)
        C(J) = DD11
       END DO

       DO I=2,10
        A(I) = A(I-1)
        DO J=1,6,5
         C(J) = D(J)
         C(J+1) = D(J+1)
         C(J+2) = D(J+2)
         C(J+3) = D(J+3)
         C(J+4) = D(J+4)
        END DO
        C(I) = A(I)
       END DO

       DO I=2,10
        A(I) = A(I-1)
        DO J=1,6,5
         C(J) = D(J)
         C(J+1) = D(J+1)
         C(J+2) = D(J+2)
         C(J+3) = D(J+3)
         C(J+4) = D(J+4)
        END DO
        C(I) = B(I) + A(I)
       END DO
       WRITE (6, *) A, B, C, D, E, F

       DO K=1,6,5
        DD23 = K
        DD24 = K + 1
        DD25 = K + 2
        DD26 = K + 3
        DD27 = K + 4
        C(K) = DD23
        C(K+1) = DD24
        C(K+2) = DD25
        C(K+3) = DD26
        C(K+4) = DD27
        B(K+4) = DD27
        B(K+3) = DD26
        B(K+2) = DD25
        B(K+1) = DD24
        B(K) = DD23
       END DO
       DO J=1,6,5
        DO K=1,10
         DO I=1,10
          DD12 = I
          DD13 = I
          DD14 = I
          DD15 = I
          DD16 = I
         END DO
        END DO
        A(J+4) = DD16
        A(J+3) = DD15
        A(J+2) = DD14
        A(J+1) = DD13
        A(J) = DD12
       END DO

       DO K=2,8,3
        B(K) = K
        B(K+1) = K + 1
        B(K+2) = K + 2
       END DO

       DO K=2,8,3
        C(K) = C(K-1)
        C(K+1) = C(K)
        C(K+2) = C(K+1)
       END DO

       DO K=2,8,3
        B(K) = B(K-1)
        B(K+1) = B(K)
        B(K+2) = B(K+1)
       END DO

       DO K=2,10
        DO I=1,10
         DO J=2,8,3
          A(J) = A(J-1)
          A(J+1) = A(J)
          A(J+2) = A(J+1)
         END DO
        END DO
       END DO

       DO K=2,8,3
        DD28 = C(K) + B(K)
        DD29 = C(K+1) + B(K+1)
        DD30 = C(K+2) + B(K+2)
        C(K+2) = DD30
        C(K+1) = DD29
        C(K) = DD28
       END DO

       DO K=1,6,5
        D(K) = E(K)
        D(K+1) = E(K+1)
        D(K+2) = E(K+2)
        D(K+3) = E(K+3)
        D(K+4) = E(K+4)
       END DO

       DO K=1,10
        DO I=1,10
         DO J=2,8,3
          A(J) = A(J-1)
          A(J+1) = A(J)
          A(J+2) = A(J+1)
         END DO
         DO J=2,8,3
          B(J) = C(J) + A(J)
          B(J+1) = C(J+1) + A(J+1)
          B(J+2) = C(J+2) + A(J+2)
         END DO
        END DO
        B(K) = 1. + D(K)
       END DO

       DO K=1,10
        A(K) = B(K)
        DO J=1,7,4
         DD17 = D(J)
         DD18 = D(J+1)
         DD19 = D(J+2)
         DD20 = D(J+3)
         C(J) = DD17
         C(J+1) = DD18
         C(J+2) = DD19
         C(J+3) = DD20
        END DO
        DD21 = D(9)
        DD22 = D(10)
        C(9) = DD21
        C(10) = DD22
        D(K) = E(K) - 1.
        DO I=1,6,5
         A(I) = B(I)
         A(I+1) = B(I+1)
         A(I+2) = B(I+2)
         A(I+3) = B(I+3)
         A(I+4) = B(I+4)
        END DO
       END DO

       DO K=1,6,5
        DD31 = 1. + B(K)
        DD32 = 1. + B(K+1)
        DD33 = 1. + B(K+2)
        DD34 = 1. + B(K+3)
        DD35 = 1. + B(K+4)
        B(K+4) = DD35
        B(K+3) = DD34
        B(K+2) = DD33
        B(K+1) = DD32
        B(K) = DD31
       END DO

       DO K=1,10
        DO I=2,10
         A(I) = A(I-1)
         DO J=1,6,5
          C(J) = D(J)
          C(J+1) = D(J+1)
          C(J+2) = D(J+2)
          C(J+3) = D(J+3)
          C(J+4) = D(J+4)
         END DO
         C(I) = A(I)
        END DO
       END DO

       DO K=1,10
        DO I=2,10
         A(I) = A(I-1)
         DO J=1,6,5
          C(J) = D(J)
          C(J+1) = D(J+1)
          C(J+2) = D(J+2)
          C(J+3) = D(J+3)
          C(J+4) = D(J+4)
         END DO
         C(I) = B(I) + A(I)
        END DO
       END DO

       DO K=1,6,5
        DD36 = 1. + E(K)
        DD37 = 1. + E(K+1)
        DD38 = 1. + E(K+2)
        DD39 = 1. + E(K+3)
        DD40 = 1. + E(K+4)
        E(K+4) = DD40
        E(K+3) = DD39
        E(K+2) = DD38
        E(K+1) = DD37
        E(K) = DD36
       END DO

       WRITE (6, *) A, B, C, D, E, F
       STOP 
      END
