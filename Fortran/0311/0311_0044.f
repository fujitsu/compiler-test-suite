      PROGRAM         MAIN
      REAL,DIMENSION(10)      ::R4_ARRAY_1,R4_ARRAY_2
      REAL,DIMENSION(5,5)     ::R4_ARRAY_3,R4_ARRAY_4
      REAL,DIMENSION(10,10)   ::R4_ARRAY_5,R4_ARRAY_6
      COMPLEX,DIMENSION(10)   ::C8_ARRAY_1,C8_ARRAY_2
      COMPLEX,DIMENSION(5,5)  ::C8_ARRAY_3,C8_ARRAY_4
      COMPLEX,DIMENSION(10,10)::C8_ARRAY_5,C8_ARRAY_6

      DATA                  R4_ARRAY_1/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./

      REAL,DIMENSION(10)      ::RESULT_VECTOR,RESULT_SCALAR
      LOGICAL               NO_GOOD/.FALSE./

      REAL,DIMENSION(5,5)     ::R4_DVT_5_5
      REAL,DIMENSION(10)      ::R4_DVT_10
      COMPLEX,DIMENSION(5,5)  ::C8_DVT_5_5
      COMPLEX,DIMENSION(10,10)::C8_DVT_10_10

      INTEGER N,I,J

      R4_ARRAY_1(2:10:2) = 0.0
      R4_ARRAY_2         = 10.0

      R4_ARRAY_3 = 1.0
      DO N=1,5
         R4_ARRAY_4(N,1:5) = R4_ARRAY_1(1:5)*R4_ARRAY_2(N+5)
      ENDDO
      R4_ARRAY_3 = R4_ARRAY_3 + R4_ARRAY_4(5:1:-1,5:1:-1)
      R4_ARRAY_4(5:1:-1,5:1:-1) = R4_ARRAY_4

      R4_ARRAY_5(1:9:2,2:10:2)  = R4_ARRAY_3
      R4_ARRAY_5(1:9:2,1:9:2)   = R4_ARRAY_3(5:1:-1,5:1:-1)
      R4_ARRAY_5(2:10:2,1:9:2)  = R4_ARRAY_4
      R4_ARRAY_5(2:10:2,2:10:2) = R4_ARRAY_4*2.0 - 10.0
      DO N=1,10
         R4_ARRAY_5(N,:) = R4_ARRAY_5(:,N)
      ENDDO
      R4_ARRAY_6 = R4_ARRAY_5

      C8_ARRAY_1 = (2.0,0.0)
      C8_ARRAY_2 = CMPLX(R4_ARRAY_6(:,1),R4_ARRAY_6(:,10))
     -              + CMPLX(R4_ARRAY_6(:,2),R4_ARRAY_6(:,9))
      C8_ARRAY_2 = C8_ARRAY_2 * C8_ARRAY_1

      DO N=1,5
         C8_ARRAY_3(:,N) = C8_ARRAY_2(N+1:N+5)*(0.0,1.0)
      ENDDO
      C8_ARRAY_4 = C8_ARRAY_3 * (1.0,1.0) + C8_ARRAY_3(:,5:1:-1)
      C8_ARRAY_4 = -C8_ARRAY_4(5:1:-1,5:1:-1)
     -             + C8_ARRAY_4*IMAG(C8_ARRAY_4)
     -             + C8_ARRAY_4*C8_ARRAY_4*0.1

      C8_ARRAY_5(1:9:2,:)       = (10.0,10.0)
      C8_ARRAY_5(2:10:2,2:10:2) = C8_ARRAY_4
      C8_ARRAY_5(2:10:2,1:9:2)  = -C8_ARRAY_4
      C8_ARRAY_6                = -C8_ARRAY_5
      C8_ARRAY_6(10:1:-1,:)     = C8_ARRAY_6 * (1.0,1.0) + (1.0,1.0)

      RESULT_VECTOR(10:1:-1) = 0.0
      DO N=1,10
         RESULT_VECTOR(10:1:-1) = RESULT_VECTOR
     -                            + REAL(C8_ARRAY_6(:,N))*3.0
     -                            + IMAG(C8_ARRAY_6(:,N))*9.0
      ENDDO

      DO I=1,10
         R4_ARRAY_1(I) = REAL(I)
      ENDDO

      DO I=1,5
         R4_ARRAY_1(2*I) = 0.0
      ENDDO
      DO I=1,10
         R4_ARRAY_2(I) = 10.0
      ENDDO

      DO I=1,5
         DO J=1,5
            R4_ARRAY_3(J,I) = 1.0
         ENDDO
      ENDDO
      DO N=1,5
         DO I=1,5
            R4_ARRAY_4(N,I) = R4_ARRAY_1(I)*R4_ARRAY_2(N+5)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            R4_ARRAY_3(J,I) = R4_ARRAY_3(J,I) + R4_ARRAY_4(6-J,6-I)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            R4_DVT_5_5(J,I)     = R4_ARRAY_4(J,I)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            R4_ARRAY_4(6-J,6-I) = R4_DVT_5_5(J,I)
         ENDDO
      ENDDO

      DO I=1,5
         DO J=1,5
            R4_ARRAY_5(2*J-1,2*I)   = R4_ARRAY_3(J,I)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            R4_ARRAY_5(2*J-1,2*I-1) = R4_ARRAY_3(6-J,6-I)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            R4_ARRAY_5(2*J,2*I-1)   = R4_ARRAY_4(J,I)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            R4_ARRAY_5(2*J,2*I)     = R4_ARRAY_4(J,I)*2.0 - 10.0
         ENDDO
      ENDDO
      DO N=1,10
         DO I=1,10
            R4_DVT_10(I)    = R4_ARRAY_5(I,N)
         ENDDO
         DO I=1,10
            R4_ARRAY_5(N,I) = R4_DVT_10(I)
         ENDDO
      ENDDO
      DO I=1,10
         DO J=1,10
            R4_ARRAY_6(J,I) = R4_ARRAY_5(J,I)
         ENDDO
      ENDDO

      DO I=1,10
         C8_ARRAY_1(I) = (2.0,0.0)
      ENDDO
      DO I=1,10
         C8_ARRAY_2(I) = CMPLX(R4_ARRAY_6(I,1),R4_ARRAY_6(I,10))
     -                   + CMPLX(R4_ARRAY_6(I,2),R4_ARRAY_6(I,9))
      ENDDO
      DO I=1,10
         C8_ARRAY_2(I) = C8_ARRAY_2(I) * C8_ARRAY_1(I)
      ENDDO

      DO N=1,5
         DO I=1,5
            C8_ARRAY_3(I,N) = C8_ARRAY_2(N+I)*(0.0,1.0)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            C8_ARRAY_4(J,I) = C8_ARRAY_3(J,I)*(1.0,1.0)
     -                        + C8_ARRAY_3(J,6-I)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            C8_DVT_5_5(J,I) = -C8_ARRAY_4(6-J,6-I)
     -                        + C8_ARRAY_4(J,I)*IMAG(C8_ARRAY_4(J,I))
     -                        + C8_ARRAY_4(J,I)*C8_ARRAY_4(J,I)*0.1
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            C8_ARRAY_4(J,I) = C8_DVT_5_5(J,I)
         ENDDO
      ENDDO

      DO I=1,10
         DO J=1,5
            C8_ARRAY_5(2*J-1,I)   = (10.0,10.0)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            C8_ARRAY_5(2*J,2*I)   = C8_ARRAY_4(J,I)
         ENDDO
      ENDDO
      DO I=1,5
         DO J=1,5
            C8_ARRAY_5(2*J,2*I-1) = -C8_ARRAY_4(J,I)
         ENDDO
      ENDDO
      DO I=1,10
         DO J=1,10
            C8_ARRAY_6(J,I)    = -C8_ARRAY_5(J,I)
         ENDDO
      ENDDO
      DO I=1,10
         DO J=1,10
            C8_DVT_10_10(J,I)  = C8_ARRAY_6(J,I)*(1.0,1.0) + (1.0,1.0)
         ENDDO
      ENDDO
      DO I=1,10
         DO J=1,10
            C8_ARRAY_6(11-J,I) = C8_DVT_10_10(J,I)
         ENDDO
      ENDDO

      DO I=1,10
         RESULT_SCALAR(11-I) = 0.0
      ENDDO
      DO N=1,10
         DO I=1,10
            R4_DVT_10(I)        = RESULT_SCALAR(I)
     -                            + REAL(C8_ARRAY_6(I,N))*3.0
     -                            + IMAG(C8_ARRAY_6(I,N))*9.0
         ENDDO
         DO I=1,10
            RESULT_SCALAR(11-I) = R4_DVT_10(I)
         ENDDO
      ENDDO

      DO I=1,10
         IF (abs(RESULT_VECTOR(I) - RESULT_SCALAR(I)) > 0.5) THEN
            NO_GOOD = .TRUE.
         ENDIF
      ENDDO

      IF (NO_GOOD) THEN
         WRITE(6,*) 'NG'
         WRITE(6,*) '< VECTOR >  ',RESULT_VECTOR
         WRITE(6,*) '< SCALAR >  ',RESULT_SCALAR
         WRITE(6,*) 'NG'
      ELSE
         WRITE(6,*) 'OK'
      ENDIF

      STOP
      END
