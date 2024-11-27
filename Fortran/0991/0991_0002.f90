    INTEGER IR(10)

    DO I=1,10
    CALL SYSTEM_CLOCK(COUNT=IR(I))
    ENDDO
    CALL RANDOM_SEED(PUT=IR)

    X=0.0
    ANE=0.0

    DO 10 I=1,200
    CALL RANDOM_NUMBER(Y)
    X=X+Y
    XI=I
    AVE=X/XI

    WRITE(1,*)I,Y,AVE
    WRITE(10,100)I,Y,AVE
100 FORMAT(I6,E15.5,E15.5)
10  CONTINUE
    
    print *,'random_number : test'
    STOP
    END

