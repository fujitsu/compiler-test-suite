      PROGRAM OPERATORS

      IMPLICIT NONE
      INTEGER I,J,N
      PARAMETER (N=900)
      DOUBLE PRECISION HH(N,N),NN(N,N),PHI(N,3),V(N)
      DOUBLE PRECISION A1,A2,B1,B2,C1,C2,A,B,C,D,E,Z,F1,F2

      if (N==900)then
          print *,'pass'
          stop
      endif

      OPEN(UNIT=9,FILE='test.dat',FORM='UNFORMATTED')
      DO I=1,N
      READ(9) PHI(I,1),PHI(I,2), PHI(I,3), V(I)
      ENDDO     
      CLOSE(9)

      Z=2.D0

      DO I=1,N
      DO J=1,I

      A1 = PHI(I,1)
      A2 = PHI(J,1)
      B1 = PHI(I,2)
      B2 = PHI(J,2)
      C1 = PHI(I,3)
      C2 = PHI(J,3)
      A = 2.0D0/(B1+B2+C1+C2)
      B = 2.0D0/(A1+A2+C1+C2)
      C = 2.0D0/(A1+A2+B1+B2)
      D = 2.0D0/(A1+B2+C1+C2)
      E = 2.0D0/(B1+A2+C1+C2)
      HH(I,J)= (a*b*c*(4*c**2 + 2*(a*b + a*c + b*c) - &
     & 2*a*c*(a + c)*(a2*c1 + a1*c2) - 2*b*c*(b + c)*(b2*c1 + b1*c2) + &
     & (a*b*c + (a + b)*c**2 + b**2*(a + c) + a**2*(b + c))* &
     & (a1*a2 + b1*b2 + a2*c1 + b2*c1 + a1*c2 + b1*c2 + 2*c1*c2) - &
     & 4*(a**2 + a*b + b**2 + a*c + b*c)*Z))/128.0D0 + &
     & (c*d*e*(4*c**2 - 2*c*(a2*c1 + b1*c2)*d*(c + d) - &
     & 2*c*(b2*c1 + a1*c2)*e*(c + e) + 2*(c*d + c*e + d*e) + & 
     & (a2*b1 + a1*b2 + a2*c1 + b2*c1 + a1*c2 + b1*c2 + 2*c1*c2)* &
     & (c*d*e + (c + d)*e**2 + d**2*(c + e) + c**2*(d + e)) - &
     & 4*(c*d + d**2 + c*e + d*e + e**2)*Z))/128.0D0 
      HH(J,I) = HH(I,J)
      NN(I,J)= (a*b*c*(a**2*b + a*b**2 + a**2*c + a*b*c + b**2*c +  &
     & a*c**2 + b*c**2))/64.0D0 + (c*d*e*(c**2*d + c*d**2 + c**2*e + &
     & c*d*e + d**2*e + c*e**2 + d*e**2))/64.0D0
      NN(J,I) = NN(I,J)

      ENDDO
      ENDDO

      F1=0.D0
      DO I=1,N
      DO J=1,N
      F1= F1+NN(I,J)*V(I)*V(J)
      ENDDO
      ENDDO 

      F2=0.D0
      DO I=1,N
      DO J=1,N
      F2= F2+HH(I,J)*V(I)*V(J)
      ENDDO
      ENDDO
      F2 = F2/F1    

      WRITE(*,*) 'N= ',N
      WRITE(*,*) 'NORM= ',F1
      WRITE(*,*) 'ENERGY =',F2
      END
