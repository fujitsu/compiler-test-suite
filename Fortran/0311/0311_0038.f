      PROGRAM MAIN
        INTEGER*4        I,J,K,V_A(10),V_B(10),ERROR/1/
        CHARACTER(LEN=8) CHA(4),CHB(4),CHC(4),CHD(4)
        DATA V_A,V_B/3,1,4,1,5,9,2,6,5,3,5,8,9,7,9,3,2,3,8,4/
        DATA CHA/8H (1H , ',8H,5I6,/, ,8H     =" ,8HHA(I:K)+/
        DATA CHB/8HA(I:K)  ,8H  1H , ",8H,5I6,//,,8HB(K:J)= /
        DATA CHC/8H     =' ,8HB(K:J)  ,8H  1H ,14,8H,5I6  ) /
        DATA CHD/8H(1H ,"A(,8HI:K)/B(K,8H:J)=",5F,8H6.3)    /

          I=COS(0.0)
          J=I+AINT(8.2)
          K=(I+J)/2

          WRITE(8,FMT='(1H ,''A(1:10)      ='',10I3,/ ,
     +                  1H , "B(1:10)      =" ,10I3,/)')
     +                  V_A(1:10),V_B
          WRITE(8,FMT='(1H ,'' I='',I3,
     +                  1H , " J=" ,I3,
     +                  1H ,3H K=  ,I3/)') I,J,K
          WRITE(8,FMT=CHA//CHB//CHC)
     +                          V_A(I:K),V_B(K:J),V_A(I:K)+V_B(K:J)
          WRITE(8,FMT='(1H ,''A(I:K)-B(K:J)='',5I6)')
     +                          V_A(I:K)-V_B(K:J)
          WRITE(8,FMT='(1H ,"A(I:K)*B(K:J)="  ,5I6)',ERR=10)
     +                          V_A(I:K)*V_B(K:J)
          WRITE(8,FMT=CHD)      V_A(I:K)/REAL(V_B(K:J))
          ERROR=0
          CALL CHECK(ERROR)

 10       IF(ERROR .EQ. 0) THEN
             WRITE(6,*) 'OK'
          ELSE
             WRITE(6,*) 'NG'
          ENDIF
         STOP
      END PROGRAM MAIN

      SUBROUTINE CHECK(ERROR)
      INTEGER*4 ERROR
      CHARACTER*80 RSLT(12),DATA(12)
      DATA RSLT/' A(1:10)      =  3  1  4  1  5  9  2  6  5  3'
     +         ,' B(1:10)      =  5  8  9  7  9  3  2  3  8  4'
     +         ,''
     +         ,'  I=  1  J=  9  K=  5'
     +         ,''
     +         ,' A(I:K)       =     3     1     4     1     5'
     +         ,' B(K:J)       =     9     3     2     3     8'
     +         ,''
     +         ,' A(I:K)+B(K:J)=    12     4     6     4    13'
     +         ,' A(I:K)-B(K:J)=    -6    -2     2    -2    -3'
     +         ,' A(I:K)*B(K:J)=    27     3     8     3    40'
     +         ,' A(I:K)/B(K:J)= 0.333 0.333 2.000 0.333 0.625'/
      REWIND 8
      DO I=1,12
         READ(8,'(A)',ERR=20) DATA(I)
      END DO
      GOTO 30
 20   ERROR=1
 30   DO I=1,12
         IF(DATA(I) /= RSLT(I)) ERROR=ERROR+1
      END DO
      IF(ERROR .NE. 0) THEN
         WRITE(6,FMT='(1H ,"TRUE VALUE:"/,12(A/))') RSLT
         WRITE(6,FMT='(1H ,"CLAC VALUE:"/,12(A/))') DATA
      ENDIF
      RETURN
      END
