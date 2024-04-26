      PROGRAM MAIN
        INTEGER*4 ERROR,I
        COMPLEX*8 ,DIMENSION(10)::S_A,S_B,V_A,V_B
        COMPLEX*16,DIMENSION(10)::S_C,S_D,V_C,V_D
        DATA       S_A,S_B,S_C/10*( 0, 0),10*( 1, 1),10*( 2,-1)/
        DATA       V_A,V_B,V_C/10*( 0, 0),10*( 1, 1),10*( 2,-1)/
        DATA       S_D/10*( 0, 1)/
        DATA       V_D/10*( 0, 1)/
        DATA       ERROR/0/
C
          DO I=1,10,1
            S_A(I)=S_A(I)+S_B(I)
            S_C(I)=S_C(I)+S_D(I)
          END DO
C
          V_A=V_A+V_B
          V_C=V_C+V_D
C
          DO I=1,10,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
            IF(V_C(I) .NE. S_C(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
            WRITE(6,*) 'OK'
          ELSE
            WRITE(6,*) 'NG'
            WRITE(6,FMT='(1H ,5HS_A=(,2(SS,E14.7,SP,E14.7,1HI,1H ),
     +                4(/,1H ,5H      2(SS,E14.7,SP,E14.7,1HI,1H )),
     +                    1H))')
     +        S_A
            WRITE(6,FMT='(1H ,5HV_A=(,2(SS,E14.7,SP,E14.7,1HI,1H ),
     +                4(/,1H ,5H      2(SS,E14.7,SP,E14.7,1HI,1H )),
     +                    1H))')
     +        V_A
            WRITE(6,FMT='(1H ,5HS_B=(,2(SS,E14.7,SP,E14.7,1HI,1H ),
     +                4(/,1H ,5H      2(SS,E14.7,SP,E14.7,1HI,1H )),
     +                    1H))')
     +        S_B
            WRITE(6,FMT='(1H ,5HV_B=(,2(SS,E14.7,SP,E14.7,1HI,1H ),
     +                4(/,1H ,5H      2(SS,E14.7,SP,E14.7,1HI,1H )),
     +                    1H))')
     +        V_B
            WRITE(6,FMT='(1H ,5HS_C=(,1(SS,D23.16,SP,D23.16,1HI,1H ),
     +                9(/,1H ,5H      1(SS,D23.16,SP,D23.16,1HI,1H )),
     +                    1H))')
     +        S_C
            WRITE(6,FMT='(1H ,5HV_C=(,1(SS,D23.16,SP,D23.16,1HI,1H ),
     +                9(/,1H ,5H      1(SS,D23.16,SP,D23.16,1HI,1H )),
     +                    1H))')
     +        V_C
            WRITE(6,FMT='(1H ,5HS_D=(,1(SS,D23.16,SP,D23.16,1HI,1H ),
     +                9(/,1H ,5H      1(SS,D23.16,SP,D23.16,1HI,1H )),
     +                    1H))')
     +        S_D
            WRITE(6,FMT='(1H ,5HV_D=(,1(SS,D23.16,SP,D23.16,1HI,1H ),
     +                9(/,1H ,5H      1(SS,D23.16,SP,D23.16,1HI,1H )),
     +                    1H))')
     +        V_D
          END IF
C
          STOP
      END PROGRAM MAIN
