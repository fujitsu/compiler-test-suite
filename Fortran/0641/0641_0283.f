      PROGRAM MAIN
       REAL*8 A(10), B(10), C(10), D(10)
       LOGICAL*4 LA(10), LB(10), LC(10), LD(10)
       INTEGER N
       PARAMETER (N = 10)
       DATA B/10*1.0/ 
       DATA C/10*2.0/ 
       DATA D/5*0.,1,0,-1,1,-1/ 
       DATA LA/5*.TRUE.,5*.FALSE./ 
       DATA LB/5*.TRUE.,5*.FALSE./ 
       DATA LC/5*.TRUE.,5*.FALSE./ 
       DATA LD/5*.TRUE.,5*.FALSE./ 
       DOUBLE PRECISION DD80, DD79, DD78, DD77, DD76, DD75, DD74, DD73, 
     X   DD72, DD71, DD70, DD69, DD68, DD67, DD66, DD65, DD64, DD63, 
     X   DD62, DD61, DD60, DD59, DD58, DD57, DD56, DD55, DD54, DD53, 
     X   DD52, DD51, DD50, DD49, DD48, DD47, DD46, DD45, DD44, DD43, 
     X   DD42, DD41
       DOUBLE PRECISION DD40, DD39, DD38, DD37, DD36, DD35, DD34, DD33, 
     X   DD32, DD31, DD30, DD29, DD28, DD27, DD26, DD25, DD24, DD23, 
     X   DD22, DD21, DD20, DD19, DD18, DD17, DD16, DD15, DD14, DD13, 
     X   DD12, DD11, DD10, DD9, DD8, DD7, DD6, DD5, DD4, DD3, DD2, DD1

       DO I=1,10
        IF (LA(I)) THEN
         A(I) = B(I) + C(I)
        END IF

        IF (LA(I)) THEN
        ELSE
         A(I) = B(I) + C(I)
        END IF

        IF (LB(I)) THEN
         A(I) = B(I) * C(I)
        ELSE
         A(I) = B(I) / C(I)
        END IF

        IF (LC(I)) THEN
         A(I) = B(I) - C(I)
        ELSE
         IF (LD(I)) THEN
          A(I) = B(I) ** C(I)
         END IF
        END IF
       END DO

       DO I=1,10
        IF (.NOT.LA(I)) THEN
         A(I) = B(I) + D(I)
        END IF
        IF (LB(I)) THEN
         A(I) = B(I) * D(I)
        END IF
        IF (.NOT.LC(I)) THEN
         A(I) = SQRT (B(I))
        ELSE
         A(I) = B(I) - D(I)
        END IF
       END DO
       WRITE (6, *) A

       DO I=1,10
        IF (LA(I)) THEN
         A(I) = I
         IF (LB(I)) THEN
          A(I) = -I
         ELSE
          A(I) = B(I)
         END IF
        ELSE
         A(I) = B(I) + C(I)
         IF (LC(I)) THEN
         ELSE
          IF (LA(I)) THEN
           A(I) = B(I) * D(I)
          END IF
         END IF
        END IF
                                                                        
        IF (LA(I)) THEN
         IF (LB(I)) THEN
          IF (LC(I)) THEN
           A(I) = A(I) + B(I)
          END IF
         END IF
        END IF
       END DO
       WRITE (6, *) A

       DO I=1,10
        IF (A(I) .EQ. B(I) .OR. A(I) .NE. C(I)) THEN
         IF (B(I) * C(I) .GT. 1.2D0) THEN
          A(I) = I ** B(I)
         ELSE
          IF (A(I) .EQ. B(I) / C(I)) THEN
           A(I) = A(I) ** C(I) / D(I)
          END IF
         END IF
        END IF
        IF (LA(I) .OR. LB(I) .OR. A(I) .GT. 0) THEN
         A(I) = A(I) + B(I)
        END IF
        IF (.NOT.LB(I) .AND. (LA(I) .OR. .NOT.LC(I))) THEN
         A(I) = D(I)
        END IF
       END DO
       WRITE (6, *) A
                                                                        

       IF (LC(5)) THEN

        IF (LB(5)) THEN
         IF (LA(5)) THEN

          DO J=1,6,5
           DD1 = B(J) - C(J)
           DD2 = B(J+1) - C(J+1)
           DD3 = B(J+2) - C(J+2)
           DD4 = B(J+3) - C(J+3)
           DD5 = B(J+4) - C(J+4)
           A(J+4) = DD5
           A(J+3) = DD4
           A(J+2) = DD3
           A(J+1) = DD2
           A(J) = DD1
          END DO
         ELSE
          DO J=1,6,5
           DD6 = B(J) - C(J)
           DD7 = B(J+1) - C(J+1)
           DD8 = B(J+2) - C(J+2)
           DD9 = B(J+3) - C(J+3)
           DD10 = B(J+4) - C(J+4)
           A(J+4) = DD10
           A(J+3) = DD9
           A(J+2) = DD8
           A(J+1) = DD7
           A(J) = DD6
          END DO
         END IF
        ELSE
         IF (LA(5)) THEN
          DO J=1,6,5
           DD11 = B(J) - C(J)
           DD12 = B(J+1) - C(J+1)
           DD13 = B(J+2) - C(J+2)
           DD14 = B(J+3) - C(J+3)
           DD15 = B(J+4) - C(J+4)
           A(J+4) = DD15
           A(J+3) = DD14
           A(J+2) = DD13
           A(J+1) = DD12
           A(J) = DD11
          END DO
         ELSE
          DO J=1,6,5
           DD16 = B(J) - C(J)
           DD17 = B(J+1) - C(J+1)
           DD18 = B(J+2) - C(J+2)
           DD19 = B(J+3) - C(J+3)
           DD20 = B(J+4) - C(J+4)
           A(J+4) = DD20
           A(J+3) = DD19
           A(J+2) = DD18
           A(J+1) = DD17
           A(J) = DD16
          END DO
         END IF
        END IF
       ELSE

        IF (LB(5)) THEN
         IF (LA(5)) THEN
          IF (LD(5)) THEN
           DO J=1,6,5
            DD21 = B(J) ** C(J)
            DD22 = B(J+1) ** C(J+1)
            DD23 = B(J+2) ** C(J+2)
            DD24 = B(J+3) ** C(J+3)
            DD25 = B(J+4) ** C(J+4)
            A(J+4) = DD25
            A(J+3) = DD24
            A(J+2) = DD23
            A(J+1) = DD22
            A(J) = DD21
           END DO
          ELSE
           DO J=1,6,5
            DD26 = B(J) * C(J)
            DD27 = B(J+1) * C(J+1)
            DD28 = B(J+2) * C(J+2)
            DD29 = B(J+3) * C(J+3)
            DD30 = B(J+4) * C(J+4)
            A(J+4) = DD30
            A(J+3) = DD29
            A(J+2) = DD28
            A(J+1) = DD27
            A(J) = DD26
           END DO
          END IF
         ELSE
          IF (LD(5)) THEN
           DO J=1,6,5
            DD31 = B(J) ** C(J)
            DD32 = B(J+1) ** C(J+1)
            DD33 = B(J+2) ** C(J+2)
            DD34 = B(J+3) ** C(J+3)
            DD35 = B(J+4) ** C(J+4)
            A(J+4) = DD35
            A(J+3) = DD34
            A(J+2) = DD33
            A(J+1) = DD32
            A(J) = DD31
           END DO
          ELSE
           DO J=1,6,5
            DD36 = B(J) * C(J)
            DD37 = B(J+1) * C(J+1)
            DD38 = B(J+2) * C(J+2)
            DD39 = B(J+3) * C(J+3)
            DD40 = B(J+4) * C(J+4)
            A(J+4) = DD40
            A(J+3) = DD39
            A(J+2) = DD38
            A(J+1) = DD37
            A(J) = DD36
           END DO
          END IF
         END IF
        ELSE
         IF (LA(5)) THEN
          IF (LD(5)) THEN
           DO J=1,6,5
            DD41 = B(J) ** C(J)
            DD42 = B(J+1) ** C(J+1)
            DD43 = B(J+2) ** C(J+2)
            DD44 = B(J+3) ** C(J+3)
            DD45 = B(J+4) ** C(J+4)
            A(J+4) = DD45
            A(J+3) = DD44
            A(J+2) = DD43
            A(J+1) = DD42
            A(J) = DD41
           END DO
          ELSE
           DO J=1,6,5
            DD46 = B(J) / C(J)
            DD47 = B(J+1) / C(J+1)
            DD48 = B(J+2) / C(J+2)
            DD49 = B(J+3) / C(J+3)
            DD50 = B(J+4) / C(J+4)
            A(J+4) = DD50
            A(J+3) = DD49
            A(J+2) = DD48
            A(J+1) = DD47
            A(J) = DD46
           END DO
          END IF
         ELSE
          IF (LD(5)) THEN
           DO J=1,6,5
            DD51 = B(J) ** C(J)
            DD52 = B(J+1) ** C(J+1)
            DD53 = B(J+2) ** C(J+2)
            DD54 = B(J+3) ** C(J+3)
            DD55 = B(J+4) ** C(J+4)
            A(J+4) = DD55
            A(J+3) = DD54
            A(J+2) = DD53
            A(J+1) = DD52
            A(J) = DD51
           END DO
          ELSE
           DO J=1,6,5
            DD56 = B(J) / C(J)
            DD57 = B(J+1) / C(J+1)
            DD58 = B(J+2) / C(J+2)
            DD59 = B(J+3) / C(J+3)
            DD60 = B(J+4) / C(J+4)
            A(J+4) = DD60
            A(J+3) = DD59
            A(J+2) = DD58
            A(J+1) = DD57
            A(J) = DD56
           END DO
          END IF
         END IF
        END IF
       END IF
       WRITE (6, *) A
       IF (.NOT.LA(5)) THEN
        IF (LB(5)) THEN
         IF (LC(5)) THEN

          DO J=1,6,5
           DD61 = B(J) - D(J)
           DD62 = B(J+1) - D(J+1)
           DD63 = B(J+2) - D(J+2)
           DD64 = B(J+3) - D(J+3)
           DD65 = B(J+4) - D(J+4)
           A(J+4) = DD65
           A(J+3) = DD64
           A(J+2) = DD63
           A(J+1) = DD62
           A(J) = DD61
          END DO
         ELSE
          DO J=1,6,5
           DD66 = B(J) * D(J)
           DD67 = B(J+1) * D(J+1)
           DD68 = B(J+2) * D(J+2)
           DD69 = B(J+3) * D(J+3)
           DD70 = B(J+4) * D(J+4)
           A(J+4) = DD70
           A(J+3) = DD69
           A(J+2) = DD68
           A(J+1) = DD67
           A(J) = DD66
          END DO
         END IF
        ELSE
         IF (LC(5)) THEN
          DO J=1,6,5
           DD71 = B(J) - D(J)
           DD72 = B(J+1) - D(J+1)
           DD73 = B(J+2) - D(J+2)
           DD74 = B(J+3) - D(J+3)
           DD75 = B(J+4) - D(J+4)
           A(J+4) = DD75
           A(J+3) = DD74
           A(J+2) = DD73
           A(J+1) = DD72
           A(J) = DD71
          END DO
         ELSE
          DO J=1,6,5
           A(J) = B(J) + D(J)
           A(J+1) = B(J+1) + D(J+1)
           A(J+2) = B(J+2) + D(J+2)
           A(J+3) = B(J+3) + D(J+3)
           A(J+4) = B(J+4) + D(J+4)
          END DO
         END IF
        END IF
       ELSE
        IF (LB(5)) THEN
         IF (LC(5)) THEN
          DO J=1,6,5
           DD76 = B(J) - D(J)
           DD77 = B(J+1) - D(J+1)
           DD78 = B(J+2) - D(J+2)
           DD79 = B(J+3) - D(J+3)
           DD80 = B(J+4) - D(J+4)
           A(J+4) = DD80
           A(J+3) = DD79
           A(J+2) = DD78
           A(J+1) = DD77
           A(J) = DD76
          END DO
         ELSE
          DO J=1,6,5
           A(J) = B(J) * D(J)
           A(J+1) = B(J+1) * D(J+1)
           A(J+2) = B(J+2) * D(J+2)
           A(J+3) = B(J+3) * D(J+3)
           A(J+4) = B(J+4) * D(J+4)
          END DO
         END IF
        ELSE
         IF (LC(5)) THEN
          DO J=1,6,5
           A(J) = B(J) - D(J)
           A(J+1) = B(J+1) - D(J+1)
           A(J+2) = B(J+2) - D(J+2)
           A(J+3) = B(J+3) - D(J+3)
           A(J+4) = B(J+4) - D(J+4)
          END DO
         END IF
        END IF
       END IF
       WRITE (6, *) A
       STOP 
      END
