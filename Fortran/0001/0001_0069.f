        INTEGER*4   ERROR,I,     S_A(16),V_A(16)
        COMPLEX*8                S_C( 8),V_C( 8)
        CHARACTER*4              S_D(16),V_D(16),S_DVT1(16)
        LOGICAL*4                S_F(16),V_F(16)
        DATA                     S_A,V_A/16*0,16*0/
        DATA                     S_C,V_C/8*(0.0,0.0),8*(0.0,0.0)/
        DATA                     S_D,V_D/32*'HNTW'/
        DATA                     S_F/3*.FALSE.,7*.TRUE.,6*.FALSE./
        DATA                     V_F/3*.FALSE.,7*.TRUE.,6*.FALSE./
        DATA      ERROR/0/
C
          DO I=1,16,1
            S_A(I)=S_A(I)+1
          END DO
          DO I=1,16,1
            S_A(I)=S_A(I)-2
          END DO
          DO I=1, 8,1
            S_C(I)=S_C(I)+(1.0,2.0)
          END DO
          DO I=1, 8,1
            S_C(I)=S_C(I)+4
          END DO
          DO I=1,16,1
            S_DVT1(I)='CCC'//S_D(I)
          END DO
          DO I=1,16,1
            S_D(I)=S_DVT1(I)
          END DO
          DO I=1,16,1
            S_DVT1(I)='AB'//S_D(I)(3:4)
          END DO
          DO I=1,16,1
            S_D(I)=S_DVT1(I)
          END DO
          DO I=1,16,1
            S_F(I)=.TRUE. .NEQV. S_F(I)
          END DO
          DO I=1,16,1
            S_F(I)= S_F(I) .OR. .FALSE.
          END DO
C
          V_A=V_A+1
          V_A=V_A-2
          V_C=V_C+(1.0,2.0)
          V_C=V_C+4
          V_D='CCC'//V_D
          V_D='AB'//V_D(1:16)(3:4)
          V_F=.TRUE. .NEQV. V_F
          V_F=V_F .OR. .FALSE.

          DO I=1,16,1
            IF(V_A(I) .NE. S_A(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          DO I=1, 8,1
            IF(V_C(I) .NE. S_C(I)) THEN
              ERROR=ERROR+1
              WRITE(6,*) I,V_C(I),S_C(I)
            END IF
          END DO
          DO I=1,16,1
            IF(V_D(I) .NE. S_D(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          DO I=1,16,1
            IF(V_F(I) .NEQV. S_F(I)) THEN
              ERROR=ERROR+1
            END IF
          END DO
          IF(ERROR .EQ. 0) THEN
            WRITE(6,*) 'OK'
          ELSE
            WRITE(6,*) 'NG'
          END IF
C
          STOP
      END
