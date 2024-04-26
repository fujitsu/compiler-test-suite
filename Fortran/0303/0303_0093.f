      PROGRAM MAIN
       COMPLEX*8 CA(5,5,5,5,5,5,5)
       COMPLEX*8 CB(5,5,5,5,5,5,5)
       REAL*4 RB(5,5,5,5)
       REAL RR3, RR2, RR1

       do i7=1,5
       do i6=1,5
       do i5=1,5
       do i4=1,5
       do i3=1,5
       do i2=1,5
       do i1=1,5
         CA(i1,i2,i3,i4,i5,i6,i7) = i1
         CB(i1,i2,i3,i4,i5,i6,i7) = i1
         RB(i1,i2,i3,i4) = 11
       enddo
       enddo
       enddo
       enddo
       enddo
       enddo
       enddo
!
       DO K=1,5
        DO J=1,5
         DO I1=1,5
          DO L=1,5
           DO II2=1,5
            DO N=1,5
             S = CA(1,I1,J,K,L,II2,N)
             IF (S .GE. 5.) THEN
              T = CB(1,I1,J,K,L,II2,N) + S
             ELSE
              T = CB(1,I1,J,K,L,N,II2)
             END IF
             RR1 = T + S
            END DO
            RR2 = RR1
           END DO
           RR3 = RR2
          END DO
          RB(1,I1,J,K) = RR3
         END DO
        END DO
       END DO

       WRITE (6, *) 'RB=', (RB(I,I,I,I), I=1,5)
       STOP 
      END
